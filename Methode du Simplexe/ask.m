function [S,X,fobj] = ask(A,b,f)
reponse=input('choisisser le mode d optimisation: max | min : ','s');
if reponse=="min"
    [S,X,fobj] = minimisation(A,b,f);
elseif reponse=="max"
    [S,X,fobj] = maximisation(A,b,f);
end
end

