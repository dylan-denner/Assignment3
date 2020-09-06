

best <- function(state, outcome) {
  ## Read outcome data
  ## Check that state and outcome are valid
  ## Return hospital name in that state with lowest 30-day death
  ## rate
  
  outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  data_frame <- as.data.frame(outcome)
  
  states <- split.data.frame(data_frame, data_frame$State)
  #print(names(states))
  state_matrix <- as.matrix(states[[state]])
  #print(colnames(good_vector))
  
  locations = which(state_matrix[,11] == min(state_matrix[,11]))
  print(state_matrix[locations,2])
  #print(min(good_vector[,11]))
  
  #print(which(states[[state]][[11]] == min(states[[state]][[11]])))
  #print(states[[state]][)
  
  
  
  #state_input <- as.character(state)
  #print(state_input)
  #print(states[state_input])
  #state_vector <- as.vector(states)
  #print(state_vector[[1]][[2]])
  
  
  
  #print(min(good_vector[[state]][["Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"]]))
  
  
  
  
  #if(outcome == "heart attack"){
  #  test <- lapply(good_vector, `[`, c('Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack'))
  #  #print(length(test))
  #  #print(lapply(good_vector, `[`, c('Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack')))
  #}
  
  #print(lapply(good_vector, `[`, c('City', 'State')))
  
  #as.matrix(good_vector)
  
  #states <- lapply(data_frame, function(x) split(data_frame, data_frame$State))
  #print(as.data.frame(states))
  #print(length(states))
  #print(states[1])
  
}

best("TX", "heart attack")