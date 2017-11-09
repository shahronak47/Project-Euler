get_number_of_days_in_timerange <- function(start_date, end_date, day) {
  sum(weekdays(seq(as.Date(start_date), as.Date(end_date), by = "1 month")) == day)
}

get_number_of_days_in_timerange("1901-01-01", "2000-12-31", "Sunday")
#[1] 171