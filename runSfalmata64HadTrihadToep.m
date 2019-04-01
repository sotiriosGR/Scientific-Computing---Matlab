%edw upologizw to akrives sxetiko empros sfalma ws pros ti norma apeirou
%einai to inf
emproshad=norm(xhad-xsol,inf)/norm(xsol,inf);
emprostrihad=norm(xtrihad-xsol,inf)/norm(xsol,inf);
emprostoep=norm(xtoep-xsol,inf)/norm(xsol,inf);

%ypologismos gia toys deiktes katastasis ws pros tin norma apeirou
deiktishad=cond(Ahad,inf);
deiktistrihad=condest(Atrihad);
deiktistoep=condest(Atoep);

%edw upologizw to a posteriori sxetiko pisw sfalma sumfona me tin allagi
%pou egine stin ergasia ston tupo tou pisw sfalmatos a posteriori

psfhad=norm((bhad-Ahad*xhad),inf)/(norm((Ahad),inf)*norm(xhad,inf)+norm(bhad,inf)); 
psftrihad=norm((btrihad-Atrihad*xtrihad),inf)/(norm((Atrihad),inf)*norm(xtrihad,inf)+norm(btrihad,inf)); 
psftoep=norm((btoep-Atoep*xtoep),inf)/(norm((Atoep),inf)*norm(xtoep,inf)+norm(btoep,inf));


%edw upologizw to a posteriori sxetiko empros sfalma symfwna me tin allagi
%pou egine stin ergasia ston tupo tou empros sfalmatos a posteriori
empsfhad=2*deiktishad*psfhad;
empsftrihad=2*deiktistrihad*psftrihad;
empsftoep=2*deiktistoep*psftoep;