hypo <- data.frame(
    sex = c("Male","Male","Male","Male","Male","Female","Female","Female","Female","Female"),
    age = c(21,43,22,86,60,16,NA,43,22,80),
    iq = c(120,NA,135,150,92,130,150,NA,84,70),
    depression = c(T,F,F,F,T,T,T,T,F,F),
    health = c(5,5,3,1,4,4,5,3,3,4),
    weight = c(150,160,135,140,110,110,120,120,105,100)
)
hypo
mean(hypo[,c("age")], na.rm=TRUE)
hypo[1:2, c("health", "weight")]
cov(hypo[,c("age","iq","health","weight")], use="complete")
cor(hypo[,c("age","iq","health","weight")], use="complete")