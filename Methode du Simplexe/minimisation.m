function [S,X,fobj] = minimisation(A,b,f)
f=-f;
[S,x,obj] = maximisation(A,b,f);
fobj=-obj;
X=x;
end

