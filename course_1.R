counts_raw <- read.delim("data/df_all.txt")
dim(counts_raw)
head(counts_raw)
tail(counts_raw)
counts_raw[1, 10]
counts_raw[1:3, 10:12]
counts_raw[1:3, ]
counts_raw$pmid[1:10]
counts_raw[1:10, 'pmid']
str(counts_raw$daysSincePublished)  # look at the structure
head(counts_raw$daysSincePublished / 7)
head(counts_raw$daysSincePublished / c(7, 1))  # length difference
is.numeric(counts_raw$daysSincePublished)
str(counts_raw$journal)
levels(counts_raw$journal)
as.factor(1:10)
counts_raw$authorsCount[1:10]
is.na(counts_raw$authorsCount[1:10])
anyNA(counts_raw$authorsCount[1:10])
summary(counts_raw$wosCountThru2011)
mean(counts_raw$wosCountThru2011)
hist(counts_raw$wosCountThru2011)
hist(sqrt(counts_raw$wosCountThru2011))
plot(counts_raw$daysSincePublished, counts_raw$wosCountThru2011)
counts_raw$authorsCount[1:10] > 7
counts_raw$authorsCount[1:10]
dim(counts_raw[counts_raw$journal == 'pone', ])
dim(counts_raw[counts_raw$journal %in% c('pone', 'pbio', 'pgen'), ])
dim(counts_raw[grepl("Immunology", counts_raw$plosSubjectTags), ])
head(grepl('Imunology', counts_raw$plosSubjectTags))
head(counts_raw$plosSubjectTags)

if (anyNA(counts_raw$authorsCount)) {
  print("Be carefull!")
} else {
  print("Looking good!")
}
