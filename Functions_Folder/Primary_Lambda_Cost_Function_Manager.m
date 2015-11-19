function  output = Primary_Lambda_Cost_Function_Manager ( input_Vector )

    % input_Vector : Horizontal Vector
%         lambda_2 = input_Vector (1, 1);
%         lambda_3 = input_Vector (1, 2);
%         lambda_4 = input_Vector (1, 3);
%         lambda_5 = input_Vector (1, 4);
%         lambda_6 = input_Vector (1, 5);
%         lambda_7 = input_Vector (1, 6);
%         lambda_8 = input_Vector (1, 7);
%                     
%         epsilon      = input_Vector (1, 8);
%         power_of_Row = input_Vector (1, 9);
        
    % Extraction of Initial Parameters
        lambda_2 = input_Vector (1, 1);
        lambda_3 = input_Vector (1, 2);
        lambda_4 = input_Vector (1, 3);
        lambda_5 = input_Vector (1, 4);
        lambda_6 = input_Vector (1, 5);
        lambda_7 = input_Vector (1, 6);
        lambda_8 = input_Vector (1, 7);
                    
%         epsilon      = initial_Parameters (1, 1);  
%         power_of_Row = initial_Parameters (1, 2);
    
    % Calculation of Cost Function
    lambda_Vector = [ lambda_2 lambda_3 lambda_4 lambda_5 lambda_6 lambda_7 lambda_8];    
    syms x;
    temp_Lambda_Sigma =0;
    for index = 1 : 7
        temp_Lambda_Sigma = temp_Lambda_Sigma + lambda_Vector( index ) / (index+1) ;
    end
        cost_Function = temp_Lambda_Sigma;
% ezplot(cost_Function)     
%         ezplot(cost_Function)
%        
%         differential_D = diff ( cost_Function );
%         possible_Maximas = (solve ( differential_D ))';

%         accepted_solution_Index = 1;
%         for index = 1 : size ( possible_Maximas , 2 )
% 
%             if (        imag ( double ( possible_Maximas ( 1 , index ) ) ) == 0           &&     real ( double ( possible_Maximas ( 1 , index ) ) ) >= 0 && real ( double ( possible_Maximas ( 1 , index ) ) ) <= 1        )
%                 possible_Maximas ( 1, index )
%                 maximum_Vector_of_all_Possible_Cost_Functions ( 1, accepted_solution_Index ) = subs ( cost_Function,  possible_Maximas ( 1, index )  );
%                 
%                 accepted_solution_Index = accepted_solution_Index +1;
%             end
%             
%         end


          
        output = cost_Function;
end
