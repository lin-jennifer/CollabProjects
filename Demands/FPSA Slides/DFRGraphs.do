*Demands for Representation
*Jennifer Lin
*Application: Stata 15.1 - Remote New College virtual desktop
*This is my attempt at color graphs

*Read in Data
use "\\tsclient\JenniferLin\Dropbox\Demands for Representation\OSU Data.dta", clear

*Change Working Directory 
cd "\\tsclient\JenniferLin\Desktop\Working"

*Figure 1
graph hbar, over(q24distgroup) over(group) ascategory asyvars percentages stack ytitle(Percentage of Preceived Group Influence) title(Preceived Group Influence in Constituency)

graph export "fig1color.pdf", replace

*Figure 2 - I tried to create it without the slideplot package but this is still a work in progress.

*Trail 1 of Figure 2
graph hbar (count), over(q35effgroup) over(group) ascategory asyvars percentages stack ytitle(Percent of Agreement for Demands of Representational Effort) title(Demands for Representational Effort)

graph export "fig2t1color.pdf", replace
