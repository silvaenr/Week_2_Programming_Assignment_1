pollutantmean <- function(directory, pollutant, id = 1:332)
{
    my_data <- data.frame()
    for (this_id in id)
    {
        this_file <- file.path(directory, sprintf("%03d.csv", this_id))
        my_data <- rbind(my_data, read.csv(this_file))
    }
    return(mean(my_data[,pollutant], na.rm = TRUE))
}

