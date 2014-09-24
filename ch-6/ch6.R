nIntervals <- 10
width <- 1/nIntervals

theta <- seq(from = width/2, to = 1-width/2, by=width)

approxMass <- dbeta(theta, 8, 4) * width

ptheta <- approxMass/sum(approxMass)