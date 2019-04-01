n=400;
sdir='colwise';

[Amc] = Mx_Make_1438('mc',400);

xsol=ones(n,1);

for j=1:fix(n/2)
   xsol(2*j)=((-1)^(j-1))*(1/(2*j));
end

bmc=Amc*xsol;

M=randn(n); P=randn(n); Q=randn(n);
[xmc] = SMW_solve_1438(Amc,bmc,M,P,Q,sdir);

xmcback=Amc\bmc;



