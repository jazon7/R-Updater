if(!require(installr)) {
  install.packages("pacman"); require(pacman)} #load / install+load pacman

library(pacman)

#load packages using pacman package 
pacman::p_load(updater,installr, magrittr)

#check r version 
R.version.string

#store installed version of R in variable
installed_r <- R.version.string %>%  
  substr(., 11,15)

#store latest version of R in variable
latest_r <- paste0(get_latest_r_version()) 

#check for latest version and update 
if(installed_r != latest_r){
  print(installr::updateR())
}else{print('No need to update. Already have latest R version')}

#cleanup workspace
rm(list=setdiff(ls(), ""))