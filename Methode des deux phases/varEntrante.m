%la m�thode varEntrante d�termine la variable qui va rentrer dans la base 
%pour un probl�me de maximisation 
function [index] = varEntrante(S)
[l,c]=size(S);
z=S(l,1:c-2);
index_list=find(z == max(z));
index=min(index_list);     
end 
