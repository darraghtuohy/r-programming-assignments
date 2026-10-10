# Step 1: Download Data
data("mtcars")
head(mtcars)
str(mtcars)

# Step 2: Test Generic Functions
summary(mtcars)
plot(mtcars)

# Step 3: Explore S3 vs. S4
s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"

print.student_s3 <- function(x) {
  cat("Name:", x$name, "Age:", x$age, "GPA:", x$GPA, "\n")
}

print(s3_obj)


setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)

setMethod("print", "student_s4", function(x) {
  cat("Name:", x@name, "Age:", x@age, "GPA:", x@GPA, "\n")
})

print(s4_obj)