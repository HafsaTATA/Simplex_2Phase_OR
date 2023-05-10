function [S,B,STOP]=eliminer_ti(S,t,B,X)
[l,c]=size(S);
tf = ismember(B,t);
STOP=0;
if any(tf)
    %At least one element of t exists in B,tf is a vector with same size as
    %B in each position if it's =1 then that element exists
  while find(tf==1)
      lignesSortantes=find(tf==1);
      colonne_sortant=B(lignesSortantes(1));
      if X(colonne_sortant)==0
          hors_base= randi([1,c-2]);
          while ismember(hors_base,B) 
              hors_base= randi([1,c-2]);
          end
            colonne_entrant=hors_base;
            B(B==colonne_sortant)=colonne_entrant;
            S=normalisation(lignesSortantes(1),colonne_entrant,S);

            tf = ismember(B,t);
      else
            STOP=1;
            return;
      end
  end
%else   disp('No element of t exists in B!as we want it');
end
end

