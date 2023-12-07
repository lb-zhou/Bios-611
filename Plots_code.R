library(ggplot2)
library(survival)

data <- read.csv(file="~/projects/data_cleaned.csv", header=T)
for (i in 1:nrow(data)) {
  if(data$class[i] == "recurrence-events") {data$class[i] <- "Yes"}
  if(data$class[i] == "no-recurrence-events") {data$class[i] <- "No"}
}

# --- Plot1: Event by age ---
p1 <- ggplot(data) +
  geom_bar(aes(x=factor(age), fill=factor(class)), stat="count", width=0.7) +
  xlab("Age Group") + ylab("Count") + labs(fill="Recurrence")
png("~/projects/Plot_Age_Recurrence.png")
print(p1)
dev.off()

# --- Plot2: Event by menopause status ---
p2 <- ggplot(data) +
  geom_bar(aes(x=factor(menopause), fill=factor(class)), stat="count", width=0.7) +
  xlab("Menopause") + ylab("Count") + labs(fill="Recurrence")
png("~/projects/Plot_Menopause_Recurrence.png")
print(p2)
dev.off()

# --- Plot3: Event by irradiate ---
p3 <- ggplot(data) +
  geom_bar(aes(x=factor(irradiate), fill=factor(class)), stat="count", width=0.7) +
  xlab("Irradiate") + ylab("Count") + labs(fill="Recurrence")
png("~/projects/Plot_Irradiate_Recurrence.png")
print(p3)
dev.off()

# --- Plot4: Event by metastasis status ---
data1 <- data[data$node.caps != "nan",]
p4 <- ggplot(data1) +
  geom_bar(aes(x=factor(node.caps), fill=factor(class)), stat="count", width=0.7) +
  xlab("Metastasis") + ylab("Count") + labs(fill="Recurrence")
png("~/projects/Plot_Metastasis_Recurrence.png")
print(p4)
dev.off()

