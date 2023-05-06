%la fonction standard fournit la forme standart du problème et génère le
%tableau initiale de la méthode du simplexe
function [S,B] = standard(A,b,f)
[l,c]=size(A);
z=[f,zeros(1,l),-1,0];
S=[A,eye(l),zeros(l,1),b;z];

x=[zeros(1,l),b'];
%le vecteur B va contenir les indices des variables de base
B=[];
for i=1:l
    c=c+1;
   B(i)=c;
end
end

