#install.packages("ggplot2")
library(ggplot2)

data <- read.csv(file="~/projects/data_cleaned.csv", header=T)

#ggplot(data, aes(x=factor(age))) +
#  geom_bar(stat="count", width=0.7, fill="steelblue") +
#  xlab("Age Group") + ylab("Count")

# --- Plot1: Event by age ---
p1 <- ggplot(data) +
  geom_bar(aes(x=factor(age), fill=factor(class)), stat="count", width=0.7) +
  xlab("Age Group") + ylab("Count") + labs(fill="Recurrence")
png("~/projects/Plot_Age_Recurrence.png")
print(p1)
dev.off()

# --- Plot1: Event by irradiate ---
p2 <- ggplot(data) +
  geom_bar(aes(x=factor(irradiate), fill=factor(class)), stat="count", width=0.7) +
  xlab("Irradiate") + ylab("Count") + labs(fill="Recurrence")
png("~/projects/Plot_Irradiate_Recurrence.png")
print(p2)
dev.off()