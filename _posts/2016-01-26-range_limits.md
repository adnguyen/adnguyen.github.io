---
layout: post
title: "Do common woodland ants at the northern range limits face thermal constraints?"
date: 2016-01-26
---
Updated: 2016-06-08

Please see my <a href="/assets/2016_range_limits_evolution_meeting_v2.pdf">poster</a> for this project! I'm hoping to submit this paper to <a href="http://www.journals.uchicago.edu/loi/an">American Naturalist!</a>

## Putting in some supplemental figures here in prep for evolution poster session: 

Cold performance curves     

![](https://cloud.githubusercontent.com/assets/4654474/15914880/89527578-2db2-11e6-9185-6211b2d255bf.jpeg)




# **"G"-matrix**    

## MANOVA method    
**Code for model construction**    
______    

```{r}
gmod2<-manova(cbind(minusfive,zero,five,twentyfive)~Colony,data=mew)
summary(gmod2)

#calculating colony level variance-covariance matrix
# RSScolony/ df = MS colony
# RSSerror/df = MSerror
colony<-as.data.frame(summary(gmod2)$SS[1])/18
error<-as.data.frame((summary(gmod2)$SS[2]))/42

# (MScolony - MSerror )/n 
#n = # of reps
Gmatrix2<-(colony-error)/3.20401
Gmatrix2
```
______   


|     Traits      | -5| 0| 5| 25|
|:----------|----------------:|-----------:|-----------:|-----------------:|
|-5|6262.982|-1834.395|-14305.846|-5586.214|
|0|-1834.395|4511.101|-1706.721| -3857.530|
|5|-14305.846|-1706.721|12971.837|1789.241|
|25|-5586.214|-3857.530|1789.241| 18900.603|

______   


## Lmer method following [Paccard et al. 2016](http://datadryad.org/bitstream/handle/10255/dryad.104718/Tables_A2-A4_Paccard_et_al_2016_AmNat.pdf?sequence=1)        

______
```{r}
o.dat$pretreat_Temp<-as.factor(as.character(o.dat$pretreat_Temp)) # make sure trait is a factor
#model construction
G<-lmer(treatment_recovery_s~1+(0+pretreat_Temp|Colony),data=o.dat,REML=TRUE)
Gmat<-VarCorr(G)$Colony

pcg<-princomp(Gmat[1:4,1:4])
summary(pcg)

knitr::kable(Gmat[1:4,1:4])
``` 
______  
 
### Here is the Gmatrix    

|         Traits       | -5|0|25|5|
|:---------------|---------------:|--------------:|---------------:|--------------:|
|-5 |       3328.4025|      -2175.663|       -5635.476|       287.8533|
|0  |      -2175.6627|      15856.707|      -16232.992|     -8876.6462|
|25 |      -5635.4759|     -16232.992|       38801.250|     17335.4510|
|5  |        287.8533|      -8876.646|       17335.451|     24394.1629|


Here is what it looks like when you PCA decompose it:     

```R
knitr::kable(pcg$loadings[,1:3])
```
     
|        Traits        |     Comp.1|     Comp.2|     Comp.3|
|:---------------|----------:|----------:|----------:|
|-5 | -0.0555950|  0.3717489| -0.3822839|
|0  | -0.4236621| -0.1632498|  0.7942848|
|25 |  0.7834554| -0.5018020|  0.1432382|
|5  |  0.4512398|  0.7637716|  0.4499483|



**Relationship between MDR, seasonality, and TAR**

|         MDR|         Tmin|         seasonality|         TAR|
|----------:|----------:|----------:|----------:|----------:|
|  1.0000000| -0.7855778| -0.0552532|  0.7733260|**MDR**|
| **-0.7855778**|  1.0000000| -0.1893775| -0.7790675|**Tmin**|
| -0.0552532| -0.1893775|  1.0000000|  0.5810611|**seasonality**|
|  0.7733260| -0.7790675|  0.5810611|  1.0000000|**TAR**|



![](https://cloud.githubusercontent.com/assets/4654474/15914939/214657aa-2db3-11e6-9e80-fc8ecce36453.jpeg)

1. X1 = MDR
2. X2= Tmin
3. X3= seasonality
4. X4= TAR