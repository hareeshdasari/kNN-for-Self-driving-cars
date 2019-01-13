#Classification Tasks For Self-Driving Cars

#Loading Dataset
signs <- read.csv("knn_traffic_signs.csv")
signs <- signs[-1:-2]

#View Data
View(signs)

#installing package
install.packages("class")
install.packages("caTools")

#Loading Package
library(class)
library(caTools)

#split the dataset into training and test sets
set.seed(123)
smpl <- sample.split(signs,SplitRatio = 0.8) 
ttrain <- subset(signs, smpl == TRUE)
ttest <- subset(signs,smpl == FALSE)

#Recognizing a road sign with kNN
# Create a vector of labels
sign_types <- ttrain$sign_type

# Classify the test signs
signs_model <- knn(train = ttrain[-1], test = ttest[-1], cl = sign_types)

# Create a confusion matrix of the actual versus predicted values
signs_actual <- test$sign_type

table(signs_model,signs_actual)

# Compute the accuracy
mean(signs_model == signs_actual)

# Modify to set k = 7
k_7 <- knn(train = ttrain[-1], test = ttest[-1], cl = sign_types,k = 7)
mean(k_7 == signs_actual)















