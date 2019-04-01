%akrives sxetiko empros sfalma
emprosMc=norm(xmc-xsol,inf)/norm(xsol,inf);

%deiktes katastasis ws pros norma apeirou
deiktisMc=cond(Amc,inf);

%a posteriori sxetiko pisw sfalma
psfMc=norm((bmc-Amc*xmc),inf)/(norm((Amc),inf)*norm(xmc,inf)+norm(bmc,inf)); 

%a posteriori sxetiko empros sfalma
empsfMc=2*deiktisMc*psfMc;

