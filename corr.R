corr <- function(directory, threshold = 0)
{
    my_corr <- numeric()
    for (this_file in list.files(file.path(directory), full.names = TRUE))
    {
        this_data <- data.frame(read.csv(this_file))
        if (sum(complete.cases(this_data)) > threshold)
        {
            my_corr <- c(my_corr, cor(this_data$sulfate, this_data$nitrate, use = "complete.obs"))
        }
    }
    return(my_corr)
}