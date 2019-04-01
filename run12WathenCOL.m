n=12;
sdir='colwise';

[Awathen] = Mx_Make_1438('wathen',12);


xsol=ones(443,1);

for j=1:fix(n/2)
   xsol(2*j)=((-1)^(j-1))*(1/(2*j));
end

bwathen=Awathen*xsol;

M=randn(n); P=randn(n); Q=randn(n);
[xwathen] = SMW_solve_1438(Awathen,bwathen,M,P,Q,sdir);

xwathenback=Awathen\bwathen;
