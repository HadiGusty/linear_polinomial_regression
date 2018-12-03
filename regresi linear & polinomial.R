brum

#regresi linear_________________________________________________________
model <- lm ( a ~ b, data=brum)
summary(model)

plot(a ~ b, data=brum)
abline(model, col = "red", lwd = 1)

# Prediksi nilai baru berdasarkan model_________________________________
predict(model, data.frame(b = 70))

#_______________________________________________________________________|

bruh

#regresi polinomial_____________________________________________________
poly_model <- lm(c ~ poly(d,degree=2), data = bruh)
poly_model

# Prediksi nilai baru berdasarkan polymodel_____________________________
x <- with(bruh, seq(min(d), max(d), length.out=100))
y <- predict(poly_model, newdata = data.frame(d = x))

plot(c ~ d, data = bruh)
lines(x, y, col = "red")

