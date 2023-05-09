function [X,fobj,B,S] =simplexe1(S,B)
[l,c]=size(S);
%tester si la solution est optimal
out=optMin(S);
while out==0
    j=varEntreMin(S);
    [index_sortant,ligne_sortant]=varSorti(S,j,B);
    B(B==index_sortant)=j;
    disp('tableau pahse1');
    S=normalisation(ligne_sortant,j,S);
    out=optMin(S);
end 
fobj=abs(S(l,c));
X=zeros(1,c-2);
for k=1:l-1
    X(B(k))=S(k,c);
end 
end

