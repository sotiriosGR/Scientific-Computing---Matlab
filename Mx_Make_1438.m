function [A]=Mx_Make_1438(mx_id,n)

A=zeros(n);
%epilogi periptwsewn gia to mx_id kai dimiourgia analogou pinaka
if mx_id == "had"
    
    A=hadamard(n);
    
elseif mx_id == "trihad"
        
    A=triu(hadamard(n));

elseif mx_id == "toep"

    A = toeplitz([4,-1,zeros(1,n-2)]);
    
elseif mx_id == "mc"
    
    for i=1:n
		     A(i,i)=1+i;
             for j=1:n
			     
				 if i ~= j
                  A(i,j)=1/(abs(i-j)^2);
                 end
             end
    end
     
elseif mx_id == "wathen"
    
     A = gallery('wathen',n,n-1);
    
elseif mx_id == "CollegeMsg"
    
     SotirisDownload=websave('colMsg','https://sparse.tamu.edu/mat/SNAP/CollegeMsg.mat');%kanei download to arxeio apo to link pou tou dinoume san orisma kai to apothikeuei
     load('colMsg.mat')%fortwnoume apo to arxeio pou thn apothikeusame 
     A=Problem.A; 
     
else 
    message = 'ERROR please use a valid index';
    error(message)
end

       

