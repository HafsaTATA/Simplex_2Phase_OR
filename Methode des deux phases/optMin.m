%La m�thode optMin v�rifie si une solution est optimale pour un probl�me de
%minimisation
function [out] = optMin(S)
[l,c]=size(S);
out = 0;
%les cout r�duits peuvent etre <=0 pr l'optimalite
z=S(l,1:c-1);
if all(z >=0)
        out = 1;
 else
        out=0;
end 
if(out == 1)
    disp('la solution est optimale');
end
end