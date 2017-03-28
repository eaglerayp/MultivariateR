headsize <- data.frame(
    head1 = c(191,195,181,183,176,208,189,197,188,192,179,183,174,190,188,163,195,186,181,175,192,174,176,197,190),
    head2 = c(179,201,185,188,171,192,190,189,197,187,186,174,185,195,187,161,183,173,182,165,185,178,176,200,187),
    breadth1 = c(155,149,148,153,144,157,150,159,152,150,158,147,150,159,151,137,155,153,145,140,154,143,139,167,163),
    breadth2 = c(145,152,149,149,142,152,149,152,159,151,148,147,152,157,158,130,158,148,146,137,152,147,143,158,150)

)
head_data <- headsize[, c("head1", "head2")]
colMeans(head_data)
cov(head_data)
head_pca <- princomp(x = head_data)
head_pca
print(summary(head_pca), loadings = TRUE)

v1 <- 12.691 *12.697
v2 <- 5.215* 5.215
v1
v2

a1<- 183.84-0.721*185.72/0.693
# slope component 1 
b1<- 0.721/0.693
a2<- 183.84-(-0.693*185.72/0.721)
# slope component 2
b2<- -0.693/0.721
a1
b1
a2
b2

plot(head_data, xlab = "First son's head length (mm)", ylab = "Second son's head length")
abline(a1, b1)
abline(a2, b2, lty = 2)