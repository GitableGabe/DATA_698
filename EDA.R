library(tidyverse)
library(tidycensus)

# Because voting is voluntary in the United States, the level of voter participation 
#(referred to as "voter turnout") has a significant impact on the election results 
#and resulting public policy.
# 
# Modeling voter turnout, and understanding where low turnout is prevalent, can 
#inform outreach efforts to increase voter participation. With the ultimate goal 
#of predicting voter turnout, in this exercise, you will focus on performing various 
#data engineering tasks to prepare election result data for predictive analysis.

#https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/VOQCHQ
elections_data <- read_csv("C:/Documents/CUNY SPS/DATA_698/countypres_2000-2020.csv")

#CVAP- Citizen Voting Age Population, Census Bureau population estimates generated using the American Community Survey
#https://www.census.gov/programs-surveys/decennial-census/about/voting-rights/cvap/2017-2021-CVAP.html (2020)
cvap2020
#https://www.census.gov/programs-surveys/decennial-census/about/voting-rights/cvap/2014-2018-CVAP.html (2016)
#https://www.census.gov/programs-surveys/decennial-census/about/voting-rights/cvap.2014.html#list-tab-1518558936 (2012)
#https://www.census.gov/programs-surveys/decennial-census/about/voting-rights/cvap.2010.html#list-tab-1518558936 (2008)

#About ACS data
#https://www.census.gov/programs-surveys/acs/guidance/estimates.html



###############################################################################
#Other references
###############################################################################
#Voter turnout
#https://electionlab.mit.edu/research/voter-turnout
#https://election.lab.ufl.edu/ (VEP- Voting Eligible Population) data by state and election

#Redistricting 
#https://www.propublica.org/article/redistricting-a-devils-dictionary (definitions)

#Class bias
#https://web.archive.org/web/20141107053600/http://academic.udayton.edu/grantneeley/pol%20303/avery%20and%20peffley%20-%20SPPQ%202005.pdf
#https://web.archive.org/web/20160412151014/https://www.nyu.edu/gsas/dept/politics/faculty/nagler/apsa2006_rv7.pdf

#Felon disenfranchisement
#https://web.archive.org/web/20190516191656/https://felonvoting.procon.org/sourcefiles/uggen_manza_asr_02.pdf