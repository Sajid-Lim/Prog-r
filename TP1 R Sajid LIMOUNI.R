#exercice 1


iris
data("iris")
class(iris)
View(iris)
nrow(iris)
ncol(iris)
colnames(iris)
summary(iris)
iris[ , c("Sepal.Length","Species")]
iris[c(100, 103, 105),]
iris[c(50:100),]
mean(iris$Sepal.Length)
median(iris$Sepal.Width)
sd(iris$Petal.Length)
quantile(iris$Petal.Width, probs = seq(from = 0.1, to = 0.9, by = 0.1))

#exercice 2


dfManga = read.csv("C:/Users/slimouni/Downloads/manga.csv")
dfAnime = read.csv("C:/Users/slimouni/Downloads/anime.csv")
class(dfManga)
class(dfAnime)
View(dfManga)
View(dfAnime)
dim(dfManga)
dim(dfAnime)
mean(dfAnime$Score) #Moyenne la plus élevée
mean(dfManga$Score)
sum(dfManga$Vote)
sum(dfAnime$Vote) #Plus de votes ici
quantile(dfManga$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))
quantile(dfAnime$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))
nrow(subset(dfManga, Score > 0.9))
nrow(subset(dfManga, Vote >= 200000))
nrow(subset(dfManga, Vote >= 200000 & Score >= 8))
nrow(subset(dfManga, Score >= 7 & Score <= 8))
effectifR = table(dfAnime$Rating)
print(effectifR)
length(effectifR)
prop.table(effectifR)
nrow(subset(dfAnime, Rating == "R - 17+ (violence & profanity)"))
nrow(subset(dfAnime, Rating == "R - 17+ (violence & profanity)" & Score >= 8))
nrow(subset(dfAnime, Rating %in% c("PG - Children","G - All Ages")))
nrow(subset(dfAnime, !Rating %in% c("PG - Children","G - All Ages")))
nrow(subset(dfAnime, Score >= 9 | Vote > 400000))
dfAnime <- dfAnime[ , c("Title","Score","Vote","Ranked")]
dfManga <- dfManga[ , c("Title","Score","Vote","Ranked")]
dfAnime$Type <- "Anime"
dfManga$Type <- "Manga"
dfConcat <- rbind(dfManga,dfAnime)
View(dfConcat)
write.table(x = dfConcat, file = "ExportTp1.csv", sep = ",",row.names = FALSE)