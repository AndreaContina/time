fit <- arima(log(interpTSDA1), c(0, 1, 1),seasonal = list(order = c(0, 1, 1), period = 12))
pred <- predict(fit, n.ahead = 10*12)
ts.plot(interpTSDA1,2.718^pred$pred, log = "y", lty = c(1,2), col=c("grey", "red"),
        main="Chlorophyll-a Spring",
        lwd=c(2, 1))