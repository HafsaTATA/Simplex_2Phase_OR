# Simplex_2Phase_OR
Simplex method and Two-phase method calculators written in Matlab.Each has it's own Graphic user interface.


## Simplexe Method 
 - This method solves problems of this type :
    
         max(min)    f= ct * x

        st :  Ax <= b (system of linear inequations)
                x>=0 
 
#### How to run the code :
- Run the graphic interface 
- Hit the start button.
- The interface takes the following inputs:
        
        - matrix A : coefficients of inequality constraints (<= Only!!).
         We assume that A has linearly independent rows (so m ≤ n).

        - vector b: maximums for each of the inqualities .It must include only postive values to ensure an initial basic feasible solution for that method .

        - vector f : coefficients of the optimization function.
            
        !!Then u choose the button adapted to your problem.
      

#### The output includes : 
    
- The solution vector X.

- The optimal value of the objective function (Fonction objective).

- The last simplex array.
## Two Phase Method 

- This method solves problems of this type :
    
         max(min)    f= ct * x

             st :   Ax <= b 
                    Aeq*x =beq
                    x>=0 
 
#### How to run the code :
- Run the graphic interface (interfaceGraphique2Phases1)
- The interface takes the following inputs:
        
        - matrix A : coefficients of inequality constraints (<= Only!!).

        - vector b: maximums for each of the inqualities .
        
        - matrix Aeq : coefficients of equality (=) constraints.

        - vector beq: equal value for each of the equalities .It must include only positive values to ensure an initial basic feasible solution.

        - vector f : coefficients of the optimization function.
        
        - A textbox : to specify the nature of the optimization whether max (for maximization)  or min (for minimisation).

#### The output includes : 
    
- The solution vector X.

- The optimal value of the objective function (Fonction objective).

- The last simplex array.

## Irregular cases taken into consideration

 - #### Unbounded solutions:
    
     With the Simplex method, we recognize this problem when the incoming variable does not admit any limit on its input value, that is to say that all the quantities aij are negative or zero.

 - ##### The problem is not feasible:
    
    With the Simplex method, we recognize that the
    problem is impossible if one or more artificial variables are present in the base in the optimal Simplex table, which means that the solution given by this table is not really feasible.


