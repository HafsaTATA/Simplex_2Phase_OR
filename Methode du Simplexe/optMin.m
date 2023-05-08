function [out] = optMin(S)
[l,c]=size(S);
out = 0;
%les cout réduits peuvent etre <=0 pr l'optimalite
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