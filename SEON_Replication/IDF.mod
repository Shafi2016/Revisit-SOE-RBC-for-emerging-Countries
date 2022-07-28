 %% Endogenous discount factor

var  d, c, h, y, i, k, a, lambda,  tb_y, ca_y, r ,util,beta_fun,eta;  

varexo e;                                    
                                             
parameters  gamma, omega, rho, sigmae, delta, psi_1, alpha, phi, beta, r_w, d_bar;
		 alpha  = 0.32;
		  rho    = 0.8598;
          phi  = 0.02829;
          r_w    = 0.0206;		
         gamma  = 2.61;
		 omega  = 1.455;
         delta  = 0.03;
         psi_1  = 0.0635; 
		 sigmae = 0.0201;
         beta   = 1/(1+r_w);
		  h_ss   = ((1-alpha)*(alpha/(r_w+delta))^(alpha/(1-alpha)))^(1/(omega-1)); 
		  k_ss   = h_ss/(((r_w+delta)/alpha)^(1/(1-alpha)));
       	 i_ss   = delta*k_ss;                                                     
		 y_ss   = (k_ss^alpha)*(h_ss^(1-alpha));                                   
		c_ss = (1+r_w)^(1/ psi_1) + h_ss^ omega/ omega -1 ;
		tb_ss  = y_ss-c_ss-i_ss;
        d_bar = tb_ss/r_w;
        d_ss   = d_bar;
      
model;
   
         % Evolution of debt
    d = (1+exp(r(-1)))*d(-1)- exp(y)+exp(c)+exp(i)+(phi/2)*(exp(k)-exp(k(-1)))^2;
         % Production function
    exp(y) = exp(a)*(exp(k(-1))^alpha)*(exp(h)^(1-alpha));
         % Law of motion for capital
    exp(k) = exp(i)+(1-delta)*exp(k(-1)); 
          %Euler equation
    exp(lambda)= beta_fun*(1+exp(r))*exp(lambda(+1)); 
         %Definition marginal utility
    exp(lambda)=(exp(c)-((exp(h)^omega)/omega))^(-gamma)-eta*(-psi_1*(1+exp(c)-omega^(-1)*exp(h)^omega)^(-psi_1-1));  
          %Law of motion Lagrange mulitplier on discount factor equation
     eta=-util(+1)+eta(+1)*beta_fun(+1);
             %%Labor FOC
     ((exp(c)-(exp(h)^omega)/omega)^(-gamma))*(exp(h)^(omega-1)) + 

     eta*(-psi_1*(1+exp(c)-omega^(-1)*exp(h)^omega)^(-psi_1-1)*(-exp(h)^(omega-1))) = exp(lambda)*(1-alpha)*exp(y)/exp(h); 
                %Investment FOC
    exp(lambda)*(1+phi*(exp(k)-exp(k(-1)))) = beta_fun*exp(lambda(+1))*(alpha*exp(y(+1))/exp(k)+1-delta+phi*(exp(k(+1))-exp(k))); 
               %Law of motion for TFP
    a = rho*a(-1)+ sigmae*e; 
             %Definition endogenous discount factor   
    beta_fun =(1+exp(c)-omega^(-1)*exp(h)^omega)^(-psi_1);
               %Definition utility function
   util=(((exp(c)-omega^(-1)*exp(h)^omega)^(1-gamma))-1)/(1-gamma);
                %country interest rate
     exp(r) = r_w;
              %Definition of trade balance to ouput ratio
    tb_y = 1-((exp(c)+exp(i)+(phi/2)*(exp(k)-exp(k(-1)))^2)/exp(y));

    ca_y = (1/exp(y))*(d(-1)-d);       
      
end;


initval;
    r     = log((1-beta)/beta);
    d     = d_ss;
    h     = log(h_ss);
    k     = log(k_ss);
    y     = log(y_ss);
    c     = log(c_ss);
    i     = log(i_ss);
    tb_y    = 1-((exp(c)+exp(i))/exp(y));
    util=(((exp(c)-omega^(-1)*exp(h)^omega)^(1-gamma))-1)/(1-gamma);
    beta_fun =(1+exp(c)-omega^(-1)*exp(h)^omega)^(-psi_1);
    eta=-util/(1-beta_fun);
    lambda=log((exp(c)-((exp(h)^omega)/omega))^(-gamma)-eta*(-psi_1*(1+exp(c)-omega^(-1)*exp(h)^omega)^(-psi_1-1)));
end;


check;
steady; 


shocks;
    var e; stderr 1;
   
end;

 stoch_simul(order=3,pruning, periods= 500000,k_order_solver,irf= 50);

y_pos=strmatch('y',M_.endo_names,'exact');

c_pos=strmatch('c',M_.endo_names,'exact');

i_pos=strmatch('i',M_.endo_names,'exact');

h_pos=strmatch('h',M_.endo_names,'exact');

tb_y_pos=strmatch('tb_y',M_.endo_names,'exact');

ca_y_pos=strmatch('ca_y',M_.endo_names,'exact');

Z_pos=strmatch('a',M_.endo_names,'exact');
d_pos=strmatch('d',M_.endo_names,'exact');
lambda_pos=strmatch('lambda',M_.endo_names,'exact');

IRF_periods=50;

burnin=5000; %periods for convergence




shock_mat_with_zeros=zeros(burnin+IRF_periods,M_.exo_nbr); %shocks set to 0 to simulate without uncertainty

IRF_no_shock_mat = simult_(oo_.dr.ys,oo_.dr,shock_mat_with_zeros,options_.order)'; %simulate series

stochastic_steady_state=IRF_no_shock_mat(1+burnin,:); % stochastic_steady_state/EMAS is any of the final points after burnin



shock_mat = zeros(burnin+IRF_periods,M_.exo_nbr);

shock_mat(1+burnin,strmatch('e',M_.exo_names,'exact'))= 1;

IRF_mat = simult_(oo_.dr.ys,oo_.dr,shock_mat,options_.order)';



IRF_mat_percent_from_SSS = (IRF_mat(1+burnin+1:1+burnin+IRF_periods,:)-IRF_no_shock_mat(1+burnin+1:1+burnin+IRF_periods,:))./repmat(stochastic_steady_state,IRF_periods,1); %only valid for variables not yet logged



%scale IRFs as reqired

y_vola_IRF 		= 100*IRF_mat_percent_from_SSS(:,y_pos);

c_vola_IRF 		= 100*IRF_mat_percent_from_SSS(:,c_pos);

inv_vola_IRF 	= 100*IRF_mat_percent_from_SSS(:,i_pos);

h_vola_IRF 	= 100*IRF_mat_percent_from_SSS(:,h_pos);

tb_y_vola_IRF 	= 100*IRF_mat_percent_from_SSS(:,tb_y_pos);

ca_y_vola_IRF 	= 100*IRF_mat_percent_from_SSS(:,ca_y_pos);

z_vola_IRF 	= 100*IRF_mat_percent_from_SSS(:,Z_pos);
d_vola_IRF 	= 100*IRF_mat_percent_from_SSS(:,d_pos);
lambda_vola_IRF 	= 100*IRF_mat_percent_from_SSS(:,lambda_pos);

hh=figure;

figure(hh)   

subplot(3,3,1)

hold on

plot(y_vola_IRF,'b-','LineWidth',3)

plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);

title('Output','FontSize',14)

ylabel('Percent','FontSize',12)



figure(hh)   

subplot(3,3,2)

hold on

plot(c_vola_IRF,'b-','LineWidth',3)

plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);

title('Consumption','FontSize',14)

ylabel('Percent','FontSize',12)

%ylim([-0.3 0.1]);set(gca,'YTick',[-0.3:0.1:0.1],'FontSize',12);





figure(hh)   

subplot(3,3,3)

hold on

plot(inv_vola_IRF,'b-','LineWidth',3)

plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);

title('Investment','FontSize',14)

ylabel('Percent','FontSize',12)

%ylim([-0.6 0.4]);set(gca,'YTick',[-0.6:0.2:0.4],'FontSize',12);



figure(hh)   

subplot(3,3,4)

hold on

plot(h_vola_IRF,'b-','LineWidth',3)

plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);

title('Hours worked','FontSize',14)

ylabel('Percent','FontSize',12)



figure(hh)   

subplot(3,3,5)

hold on

plot(tb_y_vola_IRF ,'b-','LineWidth',3)

plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);

title('Trade balance to GDP','FontSize',14)

ylabel('Percent','FontSize',12)



figure(hh)   

subplot(3,3,6)

hold on

plot(ca_y_vola_IRF,'b-','LineWidth',3)

plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);

title('current accout to GDP','FontSize',14)

ylabel('Percent','FontSize',12)

figure(hh)   

subplot(3,3,7)

hold on

plot(z_vola_IRF,'b-','LineWidth',3)

plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);

title('z','FontSize',14)

ylabel('Percent','FontSize',12)

subplot(3,3,8)

hold on

plot(d_vola_IRF ,'b-','LineWidth',3)

plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);

title('d','FontSize',14)

ylabel('Percent','FontSize',12)

subplot(3,3,9)

hold on

plot(lambda_vola_IRF,'b-','LineWidth',3)

plot(zeros(IRF_periods,1),'k--','HandleVisibility','off'); xlim([1 IRF_periods]);set(gca,'XTick',[4:4:IRF_periods],'FontSize',12);

title('Lambda','FontSize',14)

ylabel('Percent','FontSize',12)

