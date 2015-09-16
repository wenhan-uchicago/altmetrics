for (i in c('cat', 'dog', 'mouse')) {
  print(i)
}

x <- numeric()
for (i in 1:length(counts_raw$wosCountThru2011)) {
  x[i] <- counts_raw$wosCountThru2011 + 1
}

x <- numeric(length = length(counts_raw$wosCountThru2011))
x <- counts_raw$wosCountThru2011 + 1

levels(counts_raw$journal)
results <- numeric(length = length(levels(counts_raw$journal)))
names(results) <- levels(counts_raw$journal)

for (j in levels(counts_raw$journal)) {
  results[j] <- mean(counts_raw$wosCountThru2011[counts_raw$journal == j])
}