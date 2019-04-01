function [x]=SMW_solve_1438(A,b,M,P,Q,sdir)
n=size(A,2); flag1=0; %flag pou deixnei an eimai se rowwise,colwise h tipota apo ta 2

if nargin == 6 %periptwsi pou exoume sdir
        
    if sdir == 'colwise' %periptwsi p exoume sdir kai einai colwise
              
            M=diag(diag(A)); C=A-M; P=C; Q=eye(n);
                
    elseif sdir == 'rowwise' %periptwsi p exoume sdir kai einai rowwise
                
            M=diag(diag(A)); C=A-M; P=eye(n); Q=C; Q=Q'; 
                 
    else
        %periptwsi pou den exoume sosti timi gia sdir ara to sikwnoume flag
            flag1 = 1;
            
    end
                 
else
    %periptwsi ppu den exoume katholou sdir ara pali sikwnoume flag
    flag1 =1;
    
end

if ( flag1==1 )
    
    %A=M+P*Q'; an den eimaste se periptwsi colwise h rowwise,thetw A=M+P*Q',gia na lusw to grammiko sustima Ax=b pou einai isodunamo me to (M+P*Q'x)=b;
    %AIN=inv(A)-inv(A)*P*inv(I+Q'*inv(A)*P)*Q'*inv(A);  x=AIN*b; (katholou apodotiko
    %na ginei me sherman-morison)
    
    x=(M+P*Q')/b;
    
else
    %epilusi symfwna me colwise kai rowwise 
    
    PK=M\P; x=M\b; %arxikopoiw p0,j=M^(-1)*P kai x0=M^(-1)*b
    
    for i=2:n
         
        Akin=eye(n)-(PK(:,i-1)*Q(:,i-1)')/(1+Q(:,i-1)'*PK(:,i-1));
        
        PK(:,i:n)=Akin*PK(:,i:n); x=Akin*x;
    end
    
    
    x=x-(Q(:,n)'*x)/(1+Q(:,n)'*PK(:,n))*(PK(:,n));

    
end

end


