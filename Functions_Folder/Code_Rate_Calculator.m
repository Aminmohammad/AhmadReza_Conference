function output = Code_Rate_Calculator ( lambda_Vector, power_of_X )

    syms x;
    lambda_Polynomial = 0;
    for index = 1 : size ( lambda_Vector, 2 )
        lambda_Polynomial = lambda_Polynomial + lambda_Vector ( 1, index ) * x^index;
    end
%     RHO = x ^ power_of_X;

RHO = .25 * ( x ^ power_of_X ) + .75 * ( x ^ (power_of_X + 1) );

    
    rate = 1 - ( int ( RHO, 0 , 1 ) / int ( lambda_Polynomial, 0 , 1 ) );
    output = double(vpa(rate));
end