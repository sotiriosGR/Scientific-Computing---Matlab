n=1899;
sdir='colwise';

[AcollMess] = Mx_Make_1438('CollegeMsg',1899);
%Omws thelw to mitrwo na einai opws ziteitai stin askisi tin diorthwmeni
Asotiris = eye(1899)-0.85*AcollMess;
xsol=ones(n,1);

for j=1:fix(n/2)
   xsol(2*j)=((-1)^(j-1))*(1/(2*j));
end

bcollMess=Asotiris*xsol;

M=randn(n); P=randn(n); Q=randn(n);
[xcollMess] = SMW_solve_1438(Asotiris,bcollMess,M,P,Q,sdir);

xcollMessback=Asotiris\bcollMess;
