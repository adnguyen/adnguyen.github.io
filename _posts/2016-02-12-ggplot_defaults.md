---
layout: post
title: "Default ggplot"
date: 2016-02-12
---

Happy Darwin Day!

I'm posting my default ggplot settings

```{r}
# load libraries
library(ggplot2) 

#getting rid of major and minor grids
T<-theme_bw()+theme(text=element_text(size=30),axis.text=element_text(size=30),legend.text=element_text(size=28),
panel.grid.major=element_blank(),panel.grid.minor.x = element_blank(),panel.grid = element_blank(),
legend.key = element_blank())
```
