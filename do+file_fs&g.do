xtset c_id year
egen avgfs=mean(fs), by(c_id)
egen avgkof =mean( kof ), by(c_id)
twoway (scatter  avgfs avgkof)  (lfit avgfs avgkof)
reg avgfs avgkof
predict residuals, residuals 
scatter residuals avgkof, yline(0)
by c_id: gen lpopulation=log(population)
by c_id: gen lgdp=log(gdp)
by c_id: gen growth=s.lgdp
xtreg fs kof growth lgdp lpopulation landarea percip polity i.c_id
ssc install xtscc
xtscc fs kof growth lgdp lpopulation landarea percip polity, fe
sum gdp, detail
egen avggdp=mean(gdp), by(c_id)
gen developed=0
replace developed=1 if avggdp>=5905.666
gen udeveloped=0
replace udeveloped=1 if avggdp<=1489.578 
gen hdeveloped=0
replace hdeveloped=1 if avggdp>=22242.41
xtreg fs kof growth lgdp lpopulation landarea percip polity i.c_id if developed==1
xtreg fs kof growth lgdp lpopulation landarea percip polity i.c_id if developed==0
twoway (scatter  avgfs avgkof)  (lfit avgfs avgkof) if developed==0, saving(graph1)
twoway (scatter  avgfs avgkof)  (lfit avgfs avgkof) if developed==1, saving(graph2)
gr combine graph1.gph graph2.gph, ycommon xcommon
xtreg fs kof growth lgdp lpopulation landarea percip polity i.c_id if udeveloped==1
xtreg fs kof growth lgdp lpopulation landarea percip polity i.c_id if hdeveloped==1
twoway (scatter  avgfs avgkof)  (lfit avgfs avgkof) if udeveloped==1, saving(graph3)
twoway (scatter  avgfs avgkof)  (lfit avgfs avgkof) if hdeveloped==1, saving(graph4)
gr combine graph3.gph graph4.gph, ycommon xcommon
sum polity, detail
egen avgpolity =mean(polity), by(c_id)
gen stable=0
replace stable=1 if avgpolity>=39.09928
xtreg fs kof growth lgdp lpopulation landarea percip  polity i.c_id if stable==1
xtreg fs kof growth lgdp lpopulation landarea percip  polity i.c_id if stable==0
gen hunstable=0
replace hunstable=1 if avgpolity<=19.33962
xtreg fs kof growth lgdp lpopulation landarea percip  polity i.c_id if hunstable==1
gen hstable=0
replace hstable=1 if avgpolity>=61.32076
xtreg fs kof growth lgdp lpopulation landarea percip  polity i.c_id if hstable==1
twoway (scatter  avgfs avgkof)  (lfit avgfs avgkof) if stable==0, saving(graph5)
twoway (scatter  avgfs avgkof)  (lfit avgfs avgkof) if stable==1, saving(graph6)
gr combine graph6.gph graph6.gph, ycommon xcommon
twoway (scatter  avgfs avgkof)  (lfit avgfs avgkof) if hunstable==1, saving(graph7)
twoway (scatter  avgfs avgkof)  (lfit avgfs avgkof) if hstable==1, saving(graph8)
gr combine graph7.gph graph8.gph, ycommon xcommon
