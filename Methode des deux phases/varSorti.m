%la méthode varSorti détermine la variable qui va sortir de la base 
function [index_sortant,index_sortant_row] = varSorti(S,j,B)
[l,c]=size(S);
vector = S(:,j);
if all( vector <= 0)
    error('le prob est non borne');
end
test = zeros(1,l);  %Initialize empty vector
test(:,:)=inf;%on ne veut pas vider les cases ou le res <0 ou inf,l'ordre doit tjrs rester le meme
for k = 1:l-1
    if S(k,j) > 0
        test(k) = S(k,c) ./ S(k,j);
    end
end

%chercher le min dont l'indice le plus petit:
indexes=find(test == min(test));
index_sortant = B(indexes(1));
index_sortant_row=indexes(1);
for i = 1:length(indexes)
    if B(indexes(i)) < index_sortant
       index_sortant= B(indexes(i));
       index_sortant_row=indexes(i);
    end
end
end 



