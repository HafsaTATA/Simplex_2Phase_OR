function [S,X,fobj] = M_2Phases(A,Aeq,b,beq,f,reponse)

 [lA, cA]=size(A);
 [leq, ceq]=size(Aeq);
 Sup=[A,eye(lA)];
 [lUp,cUp]=size(Sup);
 % initialisation de la matrice des positons colonnes des vars de Base
 m=1;
 B=[];
 for i=cA+1:cUp
     B(m)=i;
     m=m+1;
 end

 %indicates the nbre of vars or original porblem + ecart vars
 initial_columns=cUp;
 
 %array t has the line position of all artificial variables and its length
 %indicates the number of artificial vars
 j=1;
 t=[];
for i=1:length(b)
     if b(i)<0 
         t(j)=i;
         j=j+1;
         
        Sup(i,:)=Sup(i,:)*-1; 
        b(i)=b(i)*-1;
        Sup=[Sup,zeros(lA,1)];
        cUp=cUp+1;
        Sup(i,cUp)=1;
        B(B == cA+i)=initial_columns+length(t);
     end
end


if (Aeq~=0)
    %incrementation de t[]:
    for i=lA+1:lA+leq
        t(j)=i;
        j=j+1;
    end
    %incrementation d'elements de base B:
    for i=cUp+1:cUp+leq
        B(m)=i;
        m=m+1;
    end
    B = unique(B, 'stable');
    
    b=[b;beq;0];
    
    Sdown=[Aeq,zeros(leq,cUp-ceq),eye(leq),zeros(leq,1)];
    [ldown,cdown]=size(Sdown);
    
    Sup=[Sup,zeros(lA,leq+1)];%le plus 1 est de -z
    
    %forme de derniere ligne | vecteur Z:
    z=[zeros(1,initial_columns),ones(1,cdown-initial_columns)];
    S=[Sup;Sdown;z];
    S=[S,b] ;
else 
 clear Aeq;
 Sup=[Sup,zeros(lA,1),b];%-z column
 z=[zeros(1,initial_columns),ones(1,cUp-initial_columns),1,0];  
 S=[Sup;z];
end
disp('vars de base initiaux du prob')
B
[l,c]=size(S);
S
%normalisation:
for i=1:length(t)
    S(l,:)=S(l,:)-S(t(i),:);
end
disp('normalisation phase1');
S

[X,fobj,B,S]=simplexe1(S,B);
%eliminer les variable artificelles de notre Base:
t_columns=[initial_columns+1:c-2];
if fobj==0
[S,B,STOP]=eliminer_ti(S,t_columns,B,X);
    if STOP==1
        disp('probleme n admet pas de solution');
        return;
    end
else 
    return;
end
disp('we reached optimisation ,all artificial vars r out');
S


%Phase 2:
if reponse=="min"
    S(l,:)=[f,zeros(1,c-cA-2),1,0];
    cols=[1:initial_columns,c-1,c];
    disp('suppression de colonne des ti');
    S=S(:,cols)
    X=X(:,[1:initial_columns]);
    %normalisation:
for i=1:length(B)
    S(l,:)=S(l,:)-S(i,:)*S(l,B(i));
end
    disp('normalisation phase2');
    S
    [X,fobj,B,S] =simplexe1(S,B)
elseif reponse=="max"
    S(l,:)=[f,zeros(1,c-cA-2),-1,0];
    cols=[1:initial_columns,c-1,c];
    disp('suppression de colonne des ti');
    S=S(:,cols)
    X=X(:,[1:initial_columns]);
    %normalisation:
for i=1:length(B)
    S(l,:)=S(l,:)-S(i,:)*S(l,B(i));
end
    disp('normalisation phase2');
    S
   [X,fobj,B,S] =simplexe2Max(S,B)
end



end 