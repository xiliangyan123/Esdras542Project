install.packages("vegan")
library(vegan)
library(anosim)

data(dune)
data(dune.env)
dune.dist <- vegdist(dune) %>% print()
dune.ano <- with(dune.env, anosim(dune.dist, Management))
summary(dune.ano)
plot(dune.ano)

help(anosim)
plot(dune.ano)
