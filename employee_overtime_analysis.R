EmployeeID <- c(1001, 1002, 1003, 1004, 1005)
LastName <- c("Smith", "Norris", "Johnson", "Hart", "Owens")
Salary <- c(45000, 51000, 36000, 39000, 42000)

employees <- data.frame(EmployeeID, LastName, Salary, stringsAsFactors = FALSE)
employees
summary(employees)

exempt_values <- c("N", "Y")

Exempt <- exempt_values[(employees$Salary > 50000) + 1]

employees <- cbind(employees, Exempt)
employees
employees[1:2, ]
str(employees)
employees <- rbind(employees, c(1006, "Rogers", 55000, "Y"))
employees
