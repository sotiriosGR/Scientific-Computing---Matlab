%akrives sxetiko empros sfalma
emprosWathen=norm(xwathen-xsol,inf)/norm(xsol,inf);

%deiktes katastasis ws pros norma apeirou
deiktisWathen=cond(Awathen,inf);

%a posteriori sxetiko pisw sfalma
psfWathen=norm((bwathen-Awathen*xwathen),inf)/(norm((Awathen),inf)*norm(xwathen,inf)+norm(bwathen,inf)); 

%a posteriori sxetiko empros sfalma
empsfWathen=2*deiktisWathen*psfWathen;

