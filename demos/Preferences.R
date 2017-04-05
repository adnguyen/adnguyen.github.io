####
###Author: Andrew Nguyen
### Start Date: 2017-04-05
### Last modified: 2017-04-05

#Source script to include preferences for plotting and 
# fitting non-linear functions

##Ggplot theme
T<-theme_bw()+theme(text=element_text(size=30),axis.text=element_text(size=30),
                    legend.text=element_text(size=28),panel.grid.major=element_blank(),
                    legend.position="none",panel.grid.minor.x = element_blank(),
                    panel.grid = element_blank(),legend.key = element_blank())