%la m�thode varEntrante d�termine la variable qui va rentrer dans la base 
%pour un probl�me de minimisation
function [index] = varEntreMin(S)
[l,c]=size(S);
z=S(l,1:c-2);
index_list=find(z == min(z));
index=min(index_list);     
end 
