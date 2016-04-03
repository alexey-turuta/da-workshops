# da-workshops
Lab0 in course Data analysis with R

## My task

```r
#file downloaded and stored into lab0
source("lab0/present.R")
source("lab0/arbuthnot.R")
```

### Task 1.
Exporation data
```r
summary(present$year)
dim(present)
names(present)
```

Console output
>summary(present$year)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1940    1956    1971    1971    1986    2002 
> dim(present)
[1] 63  3
> names(present)
[1] "year"  "boys"  "girls"
```

### Task 2.
Compare values into datasets
```r
summary(present)
summary(arbuthnot)
```

>       year           boys             girls        
 Min.   :1940   Min.   :1211684   Min.   :1148715  
 1st Qu.:1956   1st Qu.:1799857   1st Qu.:1711405  
 Median :1971   Median :1924868   Median :1831679  
 Mean   :1971   Mean   :1885600   Mean   :1793915  
 3rd Qu.:1986   3rd Qu.:2058524   3rd Qu.:1965538  
 Max.   :2002   Max.   :2186274   Max.   :2082052  

>      year           boys          girls     
 Min.   :1629   Min.   :2890   Min.   :2722  
 1st Qu.:1649   1st Qu.:4759   1st Qu.:4457  
 Median :1670   Median :6073   Median :5718  
 Mean   :1670   Mean   :5907   Mean   :5535  
 3rd Qu.:1690   3rd Qu.:7576   3rd Qu.:7150  
 Max.   :1710   Max.   :8426   Max.   :7779 
```
We can see that 'present' is yanger and values into columns boys and girls 
are bigger that into 'arbuthnot' dataset

Let compare scale
```r
colMeans(present)[1]-colMeans(arbuthnot)[1]
colMeans(present)/colMeans(arbuthnot)
```
>
 year 
301.5 
>      year       boys      girls 
  1.180593 319.209155 324.124597 
```