install.packages("ggrepel")
install.packages("palmerpenguins")
library(tidyverse)
library(palmerpenguins)
library(ggrepel)

penguins
glimpse(penguins)

View(penguins)

?penguins

ggplot(data = penguins, 
mapping = aes(x = flipper_length_mm, y = body_mass_g)) + geom_point(mapping = aes(color = species, shape = species)) +
geom_smooth(method = "lm") +
  labs(
    title = "Body Mass and Flipper Length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "bill_depth_mm", y = "bill_length_mm (g)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind()


ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
  )  +
    geom_point() +
    geom_smooth(se = FALSE)


ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point() +
  geom_smooth()


ggplot() +
  geom_point(
    data = penguins, 
    mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
      geom_smooth(
        data = penguins,
        mapping = aes(x = flipper_length_mm, y = body_mass_g)
      )


ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
    geom_point()

ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point()

penguins |>
  ggplot(aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point()

ggplot(penguins, aes(x = fct_infreq(species))) +
  geom_bar()

ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 200)

ggplot(penguins, aes(x = body_mass_g)) +
  geom_density()

ggplot(penguins, aes(y = species)) +
  geom_bar()

ggplot(penguins, aes(x = species)) +
  geom_bar(color = "red")
ggplot(penguins, aes(x = species)) +
  geom_bar(fill = "red")  


ggplot(data = diamonds, mapping = aes(x = carat)) +
  geom_histogram(binwidth = 1)

ggplot(penguins, aes(body_mass_g, color = species, fill = species)) + 
  geom_density(alpha = 0.5)


ggplot(penguins, aes(x = island, fill = species)) + 
  geom_bar(position = "fill") +
  labs( y = "proportion")

ggplot(penguins, aes(x= flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = "species", shape = "island")) +
  facet_wrap(~island)
?mpg
ggplot(mpg, aes(x = hwy, y = displ)) +
  geom_point(aes(color = "linewidth", shape = "linewidth"))

# Here, linewidth actually changes the visual thickness of the trend line
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_smooth(aes(linewidth = displ), se = FALSE)

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = "species"))


ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point() +
  facet_wrap(~species)


ggplot(
  data = penguins,
  mapping = aes(
    x = bill_length_mm, y = bill_depth_mm, 
    color = species, shape = species
  )
) +
  geom_point() 
ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = "fill")
ggplot(penguins, aes(x = species, fill = island)) +
  geom_bar(position = "fill")


ggplot(penguins, aes(x= flipper_length_mm, y = body_mass_g)) +
  geom_point()
ggsave(filename = "penguin-plot.png")
