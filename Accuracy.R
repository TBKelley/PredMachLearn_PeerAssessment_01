# Accuracy.R
#
# Print the fitted model accuract
#
library(caret)

Accuracy = function(fit, strDataType, df){
    pred <- predict(fit, df)
    pred.Correct <- pred == df$classe
    accuracy <- sum(pred == df$classe)/length(pred)
    modelName <-  class(fit$finalModel)[1]
    sprintf("%s %s Accuracy = %3.1f%%", modelName, strDataType, accuracy*100.0)
}
