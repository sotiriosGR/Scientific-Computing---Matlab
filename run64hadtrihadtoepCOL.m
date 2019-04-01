n=64;
sdir='colwise';

%klisi twn 3 periptwsewn tis Mx_Make me megethos 64 : had,toep kai trihad
[Ahad] = Mx_Make_1438('had',64);
[Atoep] = Mx_Make_1438('toep',64);
[Atrihad] = Mx_Make_1438('trihad',64);

xsol=ones(n,1);

for j=1:fix(n/2)
   xsol(2*j)=((-1)^(j-1))*(1/(2*j));
end

%Pairnoume ta deksia meli opws ziteitai
bhad=Ahad*xsol;
btoep=Atoep*xsol;  
btrihad=Atrihad*xsol;

M=randn(n); P=randn(n); Q=randn(n); %Arxikopoiisi twn M,P,Q me rand
%klisi tis SMW me ta upologismena orismata 
[xhad] = SMW_solve_1438(Ahad,bhad,M,P,Q,sdir);
[xtoep] = SMW_solve_1438(Atoep,btoep,M,P,Q,sdir);
[xtrihad] = SMW_solve_1438(Atrihad,btrihad,M,P,Q,sdir);

%apothikeusi kai epilusi me anapodi katheto gia ton upologismo toy
%sfalmatos
xhadback=Ahad\bhad;
xtoepback=Atoep\btoep;
xtrihadback=Atrihad\btrihad;