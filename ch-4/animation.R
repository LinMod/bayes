coin <- c("H", "T")

ani.options(interval=.1)
saveGIF({
  for(i in 1:100){
    toss <- sample(coin, 1, replace=TRUE)
    if(i==1){
      alpha <- 1
      beta <- 1
    }
    else if(toss=="H") {
      alpha <- alpha + 1
    }
    else 
      beta <- beta + 1
    plot(seq(0,1,.01), dbeta(seq(0,1,.01), alpha, beta), type="l", ylab="", xlab="", ylim=c(0,8))
  }
})
