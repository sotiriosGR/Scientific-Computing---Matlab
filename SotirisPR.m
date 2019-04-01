%EPONYMO : ALEXIOU 
%ONOMA : SOTIRIOS
%AM : 5712 
%ETOS : 6o
%EKSAMINO : 11o

%Askisi Ypologismou PageRank

%Erwtima Prwto
DownSuiteSotos = websave('SuiteSparseSotos','https://sparse.tamu.edu/mat/SNAP/CollegeMsg.mat'); %apothikeuei sto file SuiteSparseSotos to antistoixo Link pou tou orizoume 
load('SuiteSparseSotos.mat'); 

%Erwtima Deutero
spy(Problem.A); % dimiourgei to figure tis araihs morfis tou mitrwou A

%Allagi midenkwn stilwn me 1/n opws zitithike stin diorthwsi
ColsWithAllZeros = find(all(Problem.A == 0)); % vriskei kai apothikeuei oles tis stiles tou Á me all zeros(ola midenika) stoixeia ara kai me athroisma 0

G = Problem.A ; 

G (: , ColsWithAllZeros) = 1/1899; % Allazei ola ta stoixeia twn midenikwn stilwn diladi ola ta midenika (katavothres) me 1/n opou n=1899

%Erwtima Tetarto
%Apo vivlio C.Moler dhlwsi twn c,D,p,ä,e kai x
c = sum(G);
D = spdiags(1./c',0,1899,1899);
p = 0.85;
delta = (1-p)/1899;
e = ones(1899,1);
I = speye(1899,1899);
z = I-p*G*D;
x = z\(delta*e);

%Erwtima Pempto
[Sotos,Before] = sort(x,'descend'); % Taksinomei me fthinousa seira ton pinaka x pou perixei tous vathmous PageRank

Pinakas = table([Before(1:20,1)],[Sotos(1:20,1)]); % Dilwsi Pinaka pou periexei tis 20 prwtes times twn Komvwn kai twn timwn Pagerank 

Pinakas.Properties.VariableNames {'Var1'} = 'Komvos';
Pinakas.Properties.VariableNames {'Var2'} = 'TimhPageRank'; % Allazei ta onomata twn stilwn tou pinaka se Komvos kai TimhPageRank

%Erwtima Ekto

t = [0.25,0.45,0.65,0.85,0.95,0.99]; %dimiourgia dianusmatos T me oles tis times twn p

% Ypologismos deikti katastasis tou mitrwou gia diafores times toy p
theta1 = cond(I-t(1)*G*D,inf); 
theta2 = cond(I-t(2)*G*D,inf); 
theta3 = cond(I-t(3)*G*D,inf); 
theta4 = cond(I-t(4)*G*D,inf); 
theta5 = cond(I-t(5)*G*D,inf); 
theta6 = cond(I-t(6)*G*D,inf); 

  