# https://en.wikipedia.org/wiki/Mean_center_of_the_United_States_population
# https://goo.gl/maps/aMCchZQ7qTs

# -2010 Census data
# -Center of mass, expectation: http://hyperphysics.phy-astr.gsu.edu/hbase/imgmec/cm.gif
# -Centroids: coordinates
# -only lower 48: no alaska, hawaii, puerto rico
# -Missing data NOT a problem except: http://www.census.gov/quickfacts/table/PST045215/51059

library(USAboundaries)
library(rgeos)
library(maptools)
library(RColorBrewer)

# Get polygon data
counties_shp <- us_counties()
counties_polygon <- tidy(counties_shp, region="geoid")
counties_data <- counties_shp@data
counties <- left_join(counties_polygon, counties_data, by=c("id"="geoid"))
counties <- counties %>%
  filter( !state_name %in% c("Alaska", "Hawaii", "Puerto Rico"))

# Get geographic centroid info
coord_info <- sp::coordinates(counties_shp)
coord_info <- coord_info %>%
  tbl_df()
names(coord_info) <- c("long_center", "lat_center")

# Get census population info
census_info <- readr::read_csv("R11271179_SL050.csv") %>%
  select(Geo_FIPS, SE_T001_001) %>%
  rename(population = SE_T001_001)

# Get data from shapefile
counties_info <- counties_shp@data %>%
  tbl_df() %>%
  select(state_name, geoid)

# Merge county-by-county into a single data frame
counties_data <- counties_info %>%
  bind_cols(coord_info) %>%
  left_join(census_info, by=c("geoid"="Geo_FIPS")) %>%
  mutate(population = ifelse(geoid=="51600", 1081726, population)) %>%
  filter(!state_name %in% c("Alaska", "Hawaii", "Puerto Rico"))


# 1. Get weighted centroid
hub <- counties_data %>%
  mutate(
    Ex = long_center*population/sum(population),
    Ey = lat_center*population/sum(population)
  ) %>%
  summarize(
    x_coord = sum(Ex),
    y_coord = sum(Ey)
  )

counties_data <- counties_data %>%
  mutate(dist= sqrt( (long_center + 91.59852 )^2 + (lat_center - 37.55538)^2  ))

# Join for map
counties <- counties %>%
  left_join(counties_data, by=c("id"="geoid"))

geo_data <- counties %>%
  mutate(distance=dist^1.5)

ggplot(data=geo_data, aes(x=long, y=lat)) +
  # Plot choropleth polygons
  geom_polygon(aes(group=group, fill=distance)) +
  scale_fill_gradient(low="white", high="darkgreen") +
  coord_map() +
  # Trace outlines of counties
  geom_path(aes(group=group), size=0.1) +
  # Mark hub
  geom_point(data=hub, aes(x=x_coord, y=y_coord), col="red", size=3)
