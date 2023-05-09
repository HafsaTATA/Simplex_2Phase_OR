function [X,fobj,B,S] =simplexe2Max(S,B)
[l,c]=size(S);
%tester si optimal
out=opt(S);
while out==0
    j=varEntrante(S);
    [index_sortant,ligne_sortant]=varSorti(S,j,B);
    B(B==index_sortant)=j;
    S=normalisation(ligne_sortant,j,S);
    out=opt(S);
end 
fobj=abs(S(l,c));
X=zeros(1,c-2);
for k=1:l-1
    X(B(k))=S(k,c);
end 
end

