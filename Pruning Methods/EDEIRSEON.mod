%% EDEIR Model with additive Risk Premium, Call it EDEIR(a)

var  d, c, h, y, i, k, a, lambda,  tb, ca, riskpremium, r ;  

varexo e;                                    
                                             
parameters  gamma, omega, rho, sigmae, delta, psi, alpha, phi, beta, r_w, d_bar;
		 alpha  = 0.32;
		  rho    = 0.8598;
          phi  = 0.0282;
          r_w    = 0.0206;		
         gamma  = 2.61;
		 omega  = 1.455;
          delta  = 0.03;
           psi    = 0.0034;
         // psi    = 0.000000377; 
         // psi = 0.00275;
           sigmae = 0.0186;
         beta   = 1/(1+r_w);
		  h_ss   = ((1-alpha)*(alpha/(r_w+delta))^(alpha/(1-alpha)))^(1/(omega-1)); 
		  k_ss   = h_ss/(((r_w+delta)/alpha)^(1/(1-alpha)));
       	  i_ss   = delta*k_ss;                                                     
		 y_ss   = (k_ss^alpha)*(h_ss^(1-alpha));                                   
		  d_bar = 100.53;
           //d_bar = 89.53;
          d_ss   = d_bar;                                                        
		c_ss   = y_ss-i_ss-r_w*d_ss;
		tb_ss  = y_ss-c_ss-i_ss;
        
       
model;
       %Evolution of debt
    d = (1+exp(r(-1)))*d(-1)- exp(y)+exp(c)+exp(i)+(phi/2)*(exp(k)-exp(k(-1)))^2;
      % Production function
    exp(y) = exp(a)*(exp(k(-1))^alpha)*(exp(h)^(1-alpha));
       % Law of motion for capital
    exp(k) = exp(i)+(1-delta)*exp(k(-1)); 
       %Euler equation
    exp(lambda)= beta*(1+exp(r))*exp(lambda(+1)); 
       % Definition marginal utility
    (exp(c)-((exp(h)^omega)/omega))^(-gamma)   = exp(lambda); 
      %Labor FOC 
    ((exp(c)-((exp(h)^omega)/omega))^(-gamma))*(exp(h)^omega)  = exp(lambda)*(1-alpha)*exp(y); 
       %Investment FOC
    exp(lambda)*(1+phi*(exp(k)-exp(k(-1)))) = beta*exp(lambda(+1))*(alpha*exp(y(+1))/exp(k)+1-delta+phi*(exp(i(+1))-delta*exp(k))); 
       %Law of motion for TFP
   //  a = rho*a(-1)+e; 
        a = rho*a(-1)+ sigmae*e; 
       % Definition of trade balance to ouput ratio
       tb = 1-((exp(c)+exp(i))/exp(y));
      ca = (1/exp(y))*(d-d(-1));                                   
         %country interest rate
      riskpremium = psi*(exp(d-d_bar)-1); 
       // riskpremium = psi*(exp(d-d_bar)-1)+ (exp(d-d_bar))*d*psi; // IDEIR additive
      % country interest rate
       exp(r) = r_w+riskpremium;  
     
            
    
end;


initval;
    r     = log((1-beta)/beta);
    d     = d_ss;
    h     = log(h_ss);
    k     = log(k_ss);
    y     = log(y_ss);
    c     = log(c_ss);
    i     = log(i_ss);
    tb    = 1-((exp(c)+exp(i))/exp(y));
    lambda= log((exp(c)-((exp(h)^omega)/omega))^(-gamma));
end;

resid(1);

check;
steady; 

shocks;
   // var e; stderr sigmae;
    var e; stderr 1;  
   
end;


stoch_simul( order = 3 , irf =0 ,pruning, periods = 50000, drop =500);
  //nlma_theoretical_moments = nlma_th_moments(M_,oo_,options_,var_list_);
   //simulated_moments(M_,oo_, options_, var_list_, 3,  'den_haan_de_wind')
  //simulated_moments(M_,oo_, options_, var_list_, 3,  'andreasen')
  //simulated_moments(M_,oo_, options_, var_list_, 3,  'lan_meyer-gohde')
  //simulated_moments(M_,oo_, options_, var_list_, 3,  'fernandez-villaverde_et_al')
//simulations = pruning_abounds(M_,options_, 3 , 'andreasen');
 