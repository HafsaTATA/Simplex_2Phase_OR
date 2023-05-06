function [S] = normalisation(i,j,S)
[l,c]=size(S);
S(i,:)=S(i,:)./S(i,j);
for k=1:l
    if k==i
        continue
    end 
    S(k,:)=S(k,:)-S(k,j).*S(i,:);

end
end 

