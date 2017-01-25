HRS_IN_DAY = 24
DAYS_IN_WK = 7
DAYS_IN_YR = 365
MIN_IN_HR  = 60
SEC_IN_MIN = 60

hrs_in_yr = HRS_IN_DAY * DAYS_IN_YR

puts hrs_in_yr

minutes_in_decade = MIN_IN_HR * hrs_in_yr * 10

puts minutes_in_decade

age_in_seconds = SEC_IN_MIN * MIN_IN_HR * hrs_in_yr * 32
puts age_in_seconds  
