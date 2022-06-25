complete <- function(directory, id = 1:332)
{
    nobs <-c()
    for (this_id in id)
    {
        this_file <- file.path(directory, sprintf("%03d.csv", this_id))
        nobs <- c(nobs, sum(complete.cases(read.csv(this_file))))
    }
    my_data = data.frame(id, nobs)
    return(my_data)
}