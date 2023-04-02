# A simple installable R package

## Install
```r
library("devtools")
install_git("git@github.com:johnsonjzhou/mycirclepackage.git")
```

## Load
```r
library("mycirclepackage")
```

## Initialise
```r
x <- new("BaseCircle", r = 5)
print(x)
```

## Use methods
```r
cat("Perimeter", mycirclepackage::perimeter(x), "\n")
cat("Area", mycirclepackage::area(x), "\n")
```

## Inheritance
```r
y <- new("ColorCircle", r = 5, color = "green")
print(y)
```