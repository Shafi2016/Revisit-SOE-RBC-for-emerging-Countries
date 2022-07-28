function [residual, g1, g2, g3] = idftest_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(14, 1);
T15 = exp(y(8));
T18 = exp(y(6));
T24 = params(8)/2;
T31 = T24*(exp(y(10))-exp(y(2)))^2;
T38 = exp(y(11))*exp(y(2))^params(7);
T40 = exp(y(7));
T42 = T40^(1-params(7));
T43 = T38*T42;
T64 = T18-T40^params(2)/params(2);
T67 = T64^(-params(1));
T72 = params(2)^(-1);
T73 = T40^params(2)*T72;
T74 = 1+T18-T73;
T77 = (-params(6))*T74^((-params(6))-1);
T89 = T40^(params(2)-1);
T106 = params(7)*exp(y(19))/exp(y(10));
T113 = 1+T106-params(5)+params(8)*(exp(y(20))-exp(y(10)));
T114 = y(17)*exp(y(21))*T113;
T149 = getPowerDeriv(T64,(-params(1)),1);
T150 = T18*T149;
T151 = getPowerDeriv(T74,(-params(6))-1,1);
T161 = getPowerDeriv(T74,(-params(6)),1);
T164 = getPowerDeriv(T18-T73,1-params(1),1);
T171 = T40*getPowerDeriv(T40,1-params(7),1);
T175 = T40*getPowerDeriv(T40,params(2),1);
T177 = (-(T175/params(2)));
T178 = T149*T177;
T180 = (-(T72*T175));
T182 = (-params(6))*T151*T180;
T187 = T40*getPowerDeriv(T40,params(2)-1,1);
T200 = (-(T40*T15*(1-params(7))*exp(y(12))))/(T40*T40);
T208 = (-(T15*(1-params(7))*exp(y(12))/T40));
T211 = T15*T15;
T218 = (-(y(17)*exp(y(21))*T106));
T225 = T24*(-exp(y(2)))*2*(exp(y(10))-exp(y(2)));
T229 = exp(y(11))*exp(y(2))*getPowerDeriv(exp(y(2)),params(7),1);
T238 = T24*exp(y(10))*2*(exp(y(10))-exp(y(2)));
T245 = (-(exp(y(10))*params(7)*exp(y(19))))/(exp(y(10))*exp(y(10)));
T255 = (-(y(17)*exp(y(21))*params(8)*exp(y(20))));
T276 = T24*((-exp(y(2)))*2*(exp(y(10))-exp(y(2)))+(-exp(y(2)))*2*(-exp(y(2))));
T284 = T24*(exp(y(10))*2*(exp(y(10))-exp(y(2)))+exp(y(10))*2*exp(y(10)));
T289 = T40*T40*getPowerDeriv(T40,1-params(7),2);
T290 = T171+T289;
T297 = exp(y(2))*exp(y(2))*getPowerDeriv(exp(y(2)),params(7),2);
T298 = exp(y(2))*getPowerDeriv(exp(y(2)),params(7),1)+T297;
T299 = exp(y(11))*T298;
T304 = getPowerDeriv(T64,(-params(1)),2);
T305 = T18*T304;
T307 = T150+T18*T305;
T308 = getPowerDeriv(T74,(-params(6))-1,2);
T309 = T18*T308;
T312 = (-params(6))*(T18*T151+T18*T309);
T318 = (-params(6))*T180*T309;
T326 = T175+T40*T40*getPowerDeriv(T40,params(2),2);
T328 = (-(T326/params(2)));
T331 = T177*T177*T304+T149*T328;
T338 = (-params(6))*(T180*T180*T308+T151*(-(T72*T326)));
T360 = T187+T40*T40*getPowerDeriv(T40,params(2)-1,2);
T376 = (-(T40*T15*(1-params(7))*exp(y(12))))*T40*T40-(-(T40*T15*(1-params(7))*exp(y(12))))*(T40*T40+T40*T40);
T383 = exp(y(10))*exp(y(10))+exp(y(10))*exp(y(10));
T385 = (-(exp(y(10))*params(7)*exp(y(19))))*T383;
T387 = exp(y(10))*exp(y(10))*exp(y(10))*exp(y(10));
T388 = ((-(exp(y(10))*params(7)*exp(y(19))))*exp(y(10))*exp(y(10))-T385)/T387;
T399 = getPowerDeriv(T74,(-params(6)),2);
T400 = T18*T399;
T411 = getPowerDeriv(T18-T73,1-params(1),2);
T412 = T18*T411;
T445 = T24*exp(y(10))*2*(-exp(y(2)))/T15;
T451 = ((-T15)*T211-(-T15)*(T211+T211))/(T211*T211);
T456 = T24*((-exp(y(2)))*2*(exp(y(10))-exp(y(2)))+(-exp(y(2)))*2*(-exp(y(2)))+(-exp(y(2)))*2*(-exp(y(2)))+(-exp(y(2)))*2*(-exp(y(2))));
T460 = T24*(exp(y(10))*2*(exp(y(10))-exp(y(2)))+exp(y(10))*2*exp(y(10))+exp(y(10))*2*exp(y(10))+exp(y(10))*2*exp(y(10)));
T491 = T307+T18*T305+T18*(T305+T18*T18*getPowerDeriv(T64,(-params(1)),3));
T499 = (-params(6))*(T18*T151+T18*T309+T18*T309+T18*(T309+T18*T18*getPowerDeriv(T74,(-params(6))-1,3)));
T505 = (-params(6))*T180*(T309+T18*T18*getPowerDeriv(T74,(-params(6))-1,3));
T517 = (-params(6))*(T180*T180*T18*getPowerDeriv(T74,(-params(6))-1,3)+T309*(-(T72*T326)));
T534 = T326+T40*T40*getPowerDeriv(T40,params(2),2)+T40*(T40*getPowerDeriv(T40,params(2),2)+T40*T40*getPowerDeriv(T40,params(2),3));
T539 = T177*T304*T328+T177*(T304*T328+T177*T177*getPowerDeriv(T64,(-params(1)),3))+T177*T304*T328+T149*(-(T534/params(2)));
T552 = (-params(6))*(T180*T308*(-(T72*T326))+T180*(T308*(-(T72*T326))+T180*T180*getPowerDeriv(T74,(-params(6))-1,3))+T180*T308*(-(T72*T326))+T151*(-(T72*T534)));
T594 = T360+T40*T40*getPowerDeriv(T40,params(2)-1,2)+T40*(T40*getPowerDeriv(T40,params(2)-1,2)+T40*T40*getPowerDeriv(T40,params(2)-1,3));
lhs =y(5);
rhs =(1+exp(y(4)))*y(1)-T15+T18+exp(y(9))+T31;
residual(1)= lhs-rhs;
lhs =T15;
rhs =T43;
residual(2)= lhs-rhs;
lhs =exp(y(10));
rhs =exp(y(9))+exp(y(2))*(1-params(5));
residual(3)= lhs-rhs;
lhs =exp(y(12));
rhs =y(17)*(1+exp(y(15)))*exp(y(21));
residual(4)= lhs-rhs;
lhs =exp(y(12));
rhs =T67-y(18)*T77;
residual(5)= lhs-rhs;
lhs =y(18);
rhs =(-y(22))+y(24)*y(23);
residual(6)= lhs-rhs;
lhs =T67*T89+y(18)*T77*(-T89);
rhs =T15*(1-params(7))*exp(y(12))/T40;
residual(7)= lhs-rhs;
lhs =exp(y(12))*(1+params(8)*(exp(y(10))-exp(y(2))));
rhs =T114;
residual(8)= lhs-rhs;
lhs =y(11);
rhs =params(3)*y(3)+params(4)*x(it_, 1);
residual(9)= lhs-rhs;
lhs =y(17);
rhs =T74^(-params(6));
residual(10)= lhs-rhs;
lhs =y(16);
rhs =((T18-T73)^(1-params(1))-1)/(1-params(1));
residual(11)= lhs-rhs;
lhs =exp(y(15));
rhs =params(10);
residual(12)= lhs-rhs;
lhs =y(13);
rhs =1-(T31+T18+exp(y(9)))/T15;
residual(13)= lhs-rhs;
lhs =y(14);
rhs =1/T15*(y(1)-y(5));
residual(14)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(14, 25);

  %
  % Jacobian matrix
  %

  g1(1,1)=(-(1+exp(y(4))));
  g1(1,5)=1;
  g1(1,6)=(-T18);
  g1(1,8)=T15;
  g1(1,9)=(-exp(y(9)));
  g1(1,2)=(-T225);
  g1(1,10)=(-T238);
  g1(1,4)=(-(exp(y(4))*y(1)));
  g1(2,7)=(-(T38*T171));
  g1(2,8)=T15;
  g1(2,2)=(-(T42*T229));
  g1(2,11)=(-T43);
  g1(3,9)=(-exp(y(9)));
  g1(3,2)=(-(exp(y(2))*(1-params(5))));
  g1(3,10)=exp(y(10));
  g1(4,12)=exp(y(12));
  g1(4,21)=(-(y(17)*(1+exp(y(15)))*exp(y(21))));
  g1(4,15)=(-(exp(y(21))*y(17)*exp(y(15))));
  g1(4,17)=(-((1+exp(y(15)))*exp(y(21))));
  g1(5,6)=(-(T150-y(18)*(-params(6))*T18*T151));
  g1(5,7)=(-(T178-y(18)*T182));
  g1(5,12)=exp(y(12));
  g1(5,18)=T77;
  g1(6,22)=1;
  g1(6,23)=(-y(24));
  g1(6,18)=1;
  g1(6,24)=(-y(23));
  g1(7,6)=T89*T150+y(18)*(-T89)*(-params(6))*T18*T151;
  g1(7,7)=T89*T178+T67*T187+y(18)*((-T89)*T182+T77*(-T187))-T200;
  g1(7,8)=T208;
  g1(7,12)=T208;
  g1(7,18)=T77*(-T89);
  g1(8,19)=T218;
  g1(8,2)=exp(y(12))*params(8)*(-exp(y(2)));
  g1(8,10)=exp(y(12))*params(8)*exp(y(10))-y(17)*exp(y(21))*(T245+params(8)*(-exp(y(10))));
  g1(8,20)=T255;
  g1(8,12)=exp(y(12))*(1+params(8)*(exp(y(10))-exp(y(2))));
  g1(8,21)=(-T114);
  g1(8,17)=(-(exp(y(21))*T113));
  g1(9,3)=(-params(3));
  g1(9,11)=1;
  g1(9,25)=(-params(4));
  g1(10,6)=(-(T18*T161));
  g1(10,7)=(-(T161*T180));
  g1(10,17)=1;
  g1(11,6)=(-(T18*T164/(1-params(1))));
  g1(11,7)=(-(T164*T180/(1-params(1))));
  g1(11,16)=1;
  g1(12,15)=exp(y(15));
  g1(13,6)=T18/T15;
  g1(13,8)=(-(T15*(T31+T18+exp(y(9)))))/T211;
  g1(13,9)=exp(y(9))/T15;
  g1(13,2)=T225/T15;
  g1(13,10)=T238/T15;
  g1(13,13)=1;
  g1(14,1)=(-(1/T15));
  g1(14,5)=1/T15;
  g1(14,8)=(-((y(1)-y(5))*(-T15)/T211));
  g1(14,14)=1;
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  v2 = zeros(114,3);
  v2(1,1)=1;
  v2(1,2)=131;
  v2(1,3)=(-T18);
  v2(2,1)=1;
  v2(2,2)=183;
  v2(2,3)=T15;
  v2(3,1)=1;
  v2(3,2)=209;
  v2(3,3)=(-exp(y(9)));
  v2(4,1)=1;
  v2(4,2)=27;
  v2(4,3)=(-T276);
  v2(5,1)=1;
  v2(5,2)=227;
  v2(5,3)=(-(T24*exp(y(10))*2*(-exp(y(2)))));
  v2(6,1)=1;
  v2(6,2)=35;
  v2(6,3)=  v2(5,3);
  v2(7,1)=1;
  v2(7,2)=235;
  v2(7,3)=(-T284);
  v2(8,1)=1;
  v2(8,2)=76;
  v2(8,3)=(-exp(y(4)));
  v2(9,1)=1;
  v2(9,2)=4;
  v2(9,3)=  v2(8,3);
  v2(10,1)=1;
  v2(10,2)=79;
  v2(10,3)=(-(exp(y(4))*y(1)));
  v2(11,1)=2;
  v2(11,2)=157;
  v2(11,3)=(-(T38*T290));
  v2(12,1)=2;
  v2(12,2)=183;
  v2(12,3)=T15;
  v2(13,1)=2;
  v2(13,2)=32;
  v2(13,3)=(-(T171*T229));
  v2(14,1)=2;
  v2(14,2)=152;
  v2(14,3)=  v2(13,3);
  v2(15,1)=2;
  v2(15,2)=27;
  v2(15,3)=(-(T42*T299));
  v2(16,1)=2;
  v2(16,2)=257;
  v2(16,3)=(-(T38*T171));
  v2(17,1)=2;
  v2(17,2)=161;
  v2(17,3)=  v2(16,3);
  v2(18,1)=2;
  v2(18,2)=252;
  v2(18,3)=(-(T42*T229));
  v2(19,1)=2;
  v2(19,2)=36;
  v2(19,3)=  v2(18,3);
  v2(20,1)=2;
  v2(20,2)=261;
  v2(20,3)=(-T43);
  v2(21,1)=3;
  v2(21,2)=209;
  v2(21,3)=(-exp(y(9)));
  v2(22,1)=3;
  v2(22,2)=27;
  v2(22,3)=(-(exp(y(2))*(1-params(5))));
  v2(23,1)=3;
  v2(23,2)=235;
  v2(23,3)=exp(y(10));
  v2(24,1)=4;
  v2(24,2)=287;
  v2(24,3)=exp(y(12));
  v2(25,1)=4;
  v2(25,2)=521;
  v2(25,3)=(-(y(17)*(1+exp(y(15)))*exp(y(21))));
  v2(26,1)=4;
  v2(26,2)=371;
  v2(26,3)=(-(exp(y(21))*y(17)*exp(y(15))));
  v2(27,1)=4;
  v2(27,2)=515;
  v2(27,3)=  v2(26,3);
  v2(28,1)=4;
  v2(28,2)=365;
  v2(28,3)=(-(exp(y(21))*y(17)*exp(y(15))));
  v2(29,1)=4;
  v2(29,2)=421;
  v2(29,3)=(-((1+exp(y(15)))*exp(y(21))));
  v2(30,1)=4;
  v2(30,2)=517;
  v2(30,3)=  v2(29,3);
  v2(31,1)=4;
  v2(31,2)=415;
  v2(31,3)=(-(exp(y(15))*exp(y(21))));
  v2(32,1)=4;
  v2(32,2)=367;
  v2(32,3)=  v2(31,3);
  v2(33,1)=5;
  v2(33,2)=131;
  v2(33,3)=(-(T307-y(18)*T312));
  v2(34,1)=5;
  v2(34,2)=156;
  v2(34,3)=(-(T177*T305-y(18)*T318));
  v2(35,1)=5;
  v2(35,2)=132;
  v2(35,3)=  v2(34,3);
  v2(36,1)=5;
  v2(36,2)=157;
  v2(36,3)=(-(T331-y(18)*T338));
  v2(37,1)=5;
  v2(37,2)=287;
  v2(37,3)=exp(y(12));
  v2(38,1)=5;
  v2(38,2)=431;
  v2(38,3)=(-params(6))*T18*T151;
  v2(39,1)=5;
  v2(39,2)=143;
  v2(39,3)=  v2(38,3);
  v2(40,1)=5;
  v2(40,2)=432;
  v2(40,3)=T182;
  v2(41,1)=5;
  v2(41,2)=168;
  v2(41,3)=  v2(40,3);
  v2(42,1)=6;
  v2(42,2)=598;
  v2(42,3)=(-1);
  v2(43,1)=6;
  v2(43,2)=574;
  v2(43,3)=  v2(42,3);
  v2(44,1)=7;
  v2(44,2)=131;
  v2(44,3)=T89*T307+y(18)*(-T89)*T312;
  v2(45,1)=7;
  v2(45,2)=156;
  v2(45,3)=T89*T177*T305+T150*T187+y(18)*((-T89)*T318+(-params(6))*T18*T151*(-T187));
  v2(46,1)=7;
  v2(46,2)=132;
  v2(46,3)=  v2(45,3);
  v2(47,1)=7;
  v2(47,2)=157;
  v2(47,3)=T178*T187+T89*T331+T178*T187+T67*T360+y(18)*(T182*(-T187)+(-T89)*T338+T182*(-T187)+T77*(-T360))-T376/(T40*T40*T40*T40);
  v2(48,1)=7;
  v2(48,2)=182;
  v2(48,3)=(-T200);
  v2(49,1)=7;
  v2(49,2)=158;
  v2(49,3)=  v2(48,3);
  v2(50,1)=7;
  v2(50,2)=183;
  v2(50,3)=T208;
  v2(51,1)=7;
  v2(51,2)=282;
  v2(51,3)=(-T200);
  v2(52,1)=7;
  v2(52,2)=162;
  v2(52,3)=  v2(51,3);
  v2(53,1)=7;
  v2(53,2)=283;
  v2(53,3)=T208;
  v2(54,1)=7;
  v2(54,2)=187;
  v2(54,3)=  v2(53,3);
  v2(55,1)=7;
  v2(55,2)=287;
  v2(55,3)=T208;
  v2(56,1)=7;
  v2(56,2)=431;
  v2(56,3)=(-T89)*(-params(6))*T18*T151;
  v2(57,1)=7;
  v2(57,2)=143;
  v2(57,3)=  v2(56,3);
  v2(58,1)=7;
  v2(58,2)=432;
  v2(58,3)=(-T89)*T182+T77*(-T187);
  v2(59,1)=7;
  v2(59,2)=168;
  v2(59,3)=  v2(58,3);
  v2(60,1)=8;
  v2(60,2)=469;
  v2(60,3)=T218;
  v2(61,1)=8;
  v2(61,2)=27;
  v2(61,3)=exp(y(12))*params(8)*(-exp(y(2)));
  v2(62,1)=8;
  v2(62,2)=244;
  v2(62,3)=(-(y(17)*exp(y(21))*T245));
  v2(63,1)=8;
  v2(63,2)=460;
  v2(63,3)=  v2(62,3);
  v2(64,1)=8;
  v2(64,2)=235;
  v2(64,3)=exp(y(12))*params(8)*exp(y(10))-y(17)*exp(y(21))*(params(8)*(-exp(y(10)))+T388);
  v2(65,1)=8;
  v2(65,2)=495;
  v2(65,3)=T255;
  v2(66,1)=8;
  v2(66,2)=277;
  v2(66,3)=exp(y(12))*params(8)*(-exp(y(2)));
  v2(67,1)=8;
  v2(67,2)=37;
  v2(67,3)=  v2(66,3);
  v2(68,1)=8;
  v2(68,2)=285;
  v2(68,3)=exp(y(12))*params(8)*exp(y(10));
  v2(69,1)=8;
  v2(69,2)=237;
  v2(69,3)=  v2(68,3);
  v2(70,1)=8;
  v2(70,2)=287;
  v2(70,3)=exp(y(12))*(1+params(8)*(exp(y(10))-exp(y(2))));
  v2(71,1)=8;
  v2(71,2)=519;
  v2(71,3)=T218;
  v2(72,1)=8;
  v2(72,2)=471;
  v2(72,3)=  v2(71,3);
  v2(73,1)=8;
  v2(73,2)=510;
  v2(73,3)=(-(y(17)*exp(y(21))*(T245+params(8)*(-exp(y(10))))));
  v2(74,1)=8;
  v2(74,2)=246;
  v2(74,3)=  v2(73,3);
  v2(75,1)=8;
  v2(75,2)=520;
  v2(75,3)=T255;
  v2(76,1)=8;
  v2(76,2)=496;
  v2(76,3)=  v2(75,3);
  v2(77,1)=8;
  v2(77,2)=521;
  v2(77,3)=(-T114);
  v2(78,1)=8;
  v2(78,2)=419;
  v2(78,3)=(-(exp(y(21))*T106));
  v2(79,1)=8;
  v2(79,2)=467;
  v2(79,3)=  v2(78,3);
  v2(80,1)=8;
  v2(80,2)=410;
  v2(80,3)=(-(exp(y(21))*(T245+params(8)*(-exp(y(10))))));
  v2(81,1)=8;
  v2(81,2)=242;
  v2(81,3)=  v2(80,3);
  v2(82,1)=8;
  v2(82,2)=420;
  v2(82,3)=(-(exp(y(21))*params(8)*exp(y(20))));
  v2(83,1)=8;
  v2(83,2)=492;
  v2(83,3)=  v2(82,3);
  v2(84,1)=8;
  v2(84,2)=421;
  v2(84,3)=(-(exp(y(21))*T113));
  v2(85,1)=8;
  v2(85,2)=517;
  v2(85,3)=  v2(84,3);
  v2(86,1)=10;
  v2(86,2)=131;
  v2(86,3)=(-(T18*T161+T18*T400));
  v2(87,1)=10;
  v2(87,2)=156;
  v2(87,3)=(-(T180*T400));
  v2(88,1)=10;
  v2(88,2)=132;
  v2(88,3)=  v2(87,3);
  v2(89,1)=10;
  v2(89,2)=157;
  v2(89,3)=(-(T180*T180*T399+T161*(-(T72*T326))));
  v2(90,1)=11;
  v2(90,2)=131;
  v2(90,3)=(-((T18*T164+T18*T412)/(1-params(1))));
  v2(91,1)=11;
  v2(91,2)=156;
  v2(91,3)=(-(T180*T412/(1-params(1))));
  v2(92,1)=11;
  v2(92,2)=132;
  v2(92,3)=  v2(91,3);
  v2(93,1)=11;
  v2(93,2)=157;
  v2(93,3)=(-((T180*T180*T411+T164*(-(T72*T326)))/(1-params(1))));
  v2(94,1)=12;
  v2(94,2)=365;
  v2(94,3)=exp(y(15));
  v2(95,1)=13;
  v2(95,2)=131;
  v2(95,3)=T18/T15;
  v2(96,1)=13;
  v2(96,2)=181;
  v2(96,3)=(-(T15*T18))/T211;
  v2(97,1)=13;
  v2(97,2)=133;
  v2(97,3)=  v2(96,3);
  v2(98,1)=13;
  v2(98,2)=183;
  v2(98,3)=((-(T15*(T31+T18+exp(y(9)))))*T211-(-(T15*(T31+T18+exp(y(9)))))*(T211+T211))/(T211*T211);
  v2(99,1)=13;
  v2(99,2)=208;
  v2(99,3)=(-(T15*exp(y(9))))/T211;
  v2(100,1)=13;
  v2(100,2)=184;
  v2(100,3)=  v2(99,3);
  v2(101,1)=13;
  v2(101,2)=209;
  v2(101,3)=exp(y(9))/T15;
  v2(102,1)=13;
  v2(102,2)=33;
  v2(102,3)=(-(T15*T225))/T211;
  v2(103,1)=13;
  v2(103,2)=177;
  v2(103,3)=  v2(102,3);
  v2(104,1)=13;
  v2(104,2)=27;
  v2(104,3)=T276/T15;
  v2(105,1)=13;
  v2(105,2)=233;
  v2(105,3)=(-(T15*T238))/T211;
  v2(106,1)=13;
  v2(106,2)=185;
  v2(106,3)=  v2(105,3);
  v2(107,1)=13;
  v2(107,2)=227;
  v2(107,3)=T445;
  v2(108,1)=13;
  v2(108,2)=35;
  v2(108,3)=  v2(107,3);
  v2(109,1)=13;
  v2(109,2)=235;
  v2(109,3)=T284/T15;
  v2(110,1)=14;
  v2(110,2)=176;
  v2(110,3)=(-((-T15)/T211));
  v2(111,1)=14;
  v2(111,2)=8;
  v2(111,3)=  v2(110,3);
  v2(112,1)=14;
  v2(112,2)=180;
  v2(112,3)=(-T15)/T211;
  v2(113,1)=14;
  v2(113,2)=108;
  v2(113,3)=  v2(112,3);
  v2(114,1)=14;
  v2(114,2)=183;
  v2(114,3)=(-((y(1)-y(5))*T451));
  g2 = sparse(v2(:,1),v2(:,2),v2(:,3),14,625);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  v3 = zeros(283,3);
  v3(1,1)=1;
  v3(1,2)=3256;
  v3(1,3)=(-T18);
  v3(2,1)=1;
  v3(2,2)=4558;
  v3(2,3)=T15;
  v3(3,1)=1;
  v3(3,2)=5209;
  v3(3,3)=(-exp(y(9)));
  v3(4,1)=1;
  v3(4,2)=652;
  v3(4,3)=(-T456);
  v3(5,1)=1;
  v3(5,2)=5652;
  v3(5,3)=(-(T24*exp(y(10))*2*(-exp(y(2)))));
  v3(6,1)=1;
  v3(6,2)=660;
  v3(6,3)=  v3(5,3);
  v3(7,1)=1;
  v3(7,2)=852;
  v3(7,3)=  v3(5,3);
  v3(8,1)=1;
  v3(8,2)=5852;
  v3(8,3)=(-(T24*exp(y(10))*2*(-exp(y(2)))));
  v3(9,1)=1;
  v3(9,2)=860;
  v3(9,3)=  v3(8,3);
  v3(10,1)=1;
  v3(10,2)=5660;
  v3(10,3)=  v3(8,3);
  v3(11,1)=1;
  v3(11,2)=5860;
  v3(11,3)=(-T460);
  v3(12,1)=1;
  v3(12,2)=1951;
  v3(12,3)=(-exp(y(4)));
  v3(13,1)=1;
  v3(13,2)=79;
  v3(13,3)=  v3(12,3);
  v3(14,1)=1;
  v3(14,2)=1879;
  v3(14,3)=  v3(12,3);
  v3(15,1)=1;
  v3(15,2)=1954;
  v3(15,3)=(-(exp(y(4))*y(1)));
  v3(16,1)=2;
  v3(16,2)=3907;
  v3(16,3)=(-(T38*(T290+T289+T40*(T40*getPowerDeriv(T40,1-params(7),2)+T40*T40*getPowerDeriv(T40,1-params(7),3)))));
  v3(17,1)=2;
  v3(17,2)=4558;
  v3(17,3)=T15;
  v3(18,1)=2;
  v3(18,2)=782;
  v3(18,3)=(-(T229*T290));
  v3(19,1)=2;
  v3(19,2)=3782;
  v3(19,3)=  v3(18,3);
  v3(20,1)=2;
  v3(20,2)=3902;
  v3(20,3)=  v3(18,3);
  v3(21,1)=2;
  v3(21,2)=657;
  v3(21,3)=(-(T171*T299));
  v3(22,1)=2;
  v3(22,2)=777;
  v3(22,3)=  v3(21,3);
  v3(23,1)=2;
  v3(23,2)=3777;
  v3(23,3)=  v3(21,3);
  v3(24,1)=2;
  v3(24,2)=652;
  v3(24,3)=(-(T42*exp(y(11))*(T298+T297+exp(y(2))*(exp(y(2))*getPowerDeriv(exp(y(2)),params(7),2)+exp(y(2))*exp(y(2))*getPowerDeriv(exp(y(2)),params(7),3)))));
  v3(25,1)=2;
  v3(25,2)=6407;
  v3(25,3)=(-(T38*T290));
  v3(26,1)=2;
  v3(26,2)=3911;
  v3(26,3)=  v3(25,3);
  v3(27,1)=2;
  v3(27,2)=4007;
  v3(27,3)=  v3(25,3);
  v3(28,1)=2;
  v3(28,2)=6282;
  v3(28,3)=(-(T171*T229));
  v3(29,1)=2;
  v3(29,2)=786;
  v3(29,3)=  v3(28,3);
  v3(30,1)=2;
  v3(30,2)=882;
  v3(30,3)=  v3(28,3);
  v3(31,1)=2;
  v3(31,2)=3786;
  v3(31,3)=  v3(28,3);
  v3(32,1)=2;
  v3(32,2)=4002;
  v3(32,3)=  v3(28,3);
  v3(33,1)=2;
  v3(33,2)=6402;
  v3(33,3)=  v3(28,3);
  v3(34,1)=2;
  v3(34,2)=6277;
  v3(34,3)=(-(T42*T299));
  v3(35,1)=2;
  v3(35,2)=661;
  v3(35,3)=  v3(34,3);
  v3(36,1)=2;
  v3(36,2)=877;
  v3(36,3)=  v3(34,3);
  v3(37,1)=2;
  v3(37,2)=6507;
  v3(37,3)=(-(T38*T171));
  v3(38,1)=2;
  v3(38,2)=4011;
  v3(38,3)=  v3(37,3);
  v3(39,1)=2;
  v3(39,2)=6411;
  v3(39,3)=  v3(37,3);
  v3(40,1)=2;
  v3(40,2)=6502;
  v3(40,3)=(-(T42*T229));
  v3(41,1)=2;
  v3(41,2)=886;
  v3(41,3)=  v3(40,3);
  v3(42,1)=2;
  v3(42,2)=6286;
  v3(42,3)=  v3(40,3);
  v3(43,1)=2;
  v3(43,2)=6511;
  v3(43,3)=(-T43);
  v3(44,1)=3;
  v3(44,2)=5209;
  v3(44,3)=(-exp(y(9)));
  v3(45,1)=3;
  v3(45,2)=652;
  v3(45,3)=(-(exp(y(2))*(1-params(5))));
  v3(46,1)=3;
  v3(46,2)=5860;
  v3(46,3)=exp(y(10));
  v3(47,1)=4;
  v3(47,2)=7162;
  v3(47,3)=exp(y(12));
  v3(48,1)=4;
  v3(48,2)=13021;
  v3(48,3)=(-(y(17)*(1+exp(y(15)))*exp(y(21))));
  v3(49,1)=4;
  v3(49,2)=9271;
  v3(49,3)=(-(exp(y(21))*y(17)*exp(y(15))));
  v3(50,1)=4;
  v3(50,2)=12871;
  v3(50,3)=  v3(49,3);
  v3(51,1)=4;
  v3(51,2)=13015;
  v3(51,3)=  v3(49,3);
  v3(52,1)=4;
  v3(52,2)=9121;
  v3(52,3)=(-(exp(y(21))*y(17)*exp(y(15))));
  v3(53,1)=4;
  v3(53,2)=9265;
  v3(53,3)=  v3(52,3);
  v3(54,1)=4;
  v3(54,2)=12865;
  v3(54,3)=  v3(52,3);
  v3(55,1)=4;
  v3(55,2)=9115;
  v3(55,3)=(-(exp(y(21))*y(17)*exp(y(15))));
  v3(56,1)=4;
  v3(56,2)=10521;
  v3(56,3)=(-((1+exp(y(15)))*exp(y(21))));
  v3(57,1)=4;
  v3(57,2)=12921;
  v3(57,3)=  v3(56,3);
  v3(58,1)=4;
  v3(58,2)=13017;
  v3(58,3)=  v3(56,3);
  v3(59,1)=4;
  v3(59,2)=10371;
  v3(59,3)=(-(exp(y(15))*exp(y(21))));
  v3(60,1)=4;
  v3(60,2)=9171;
  v3(60,3)=  v3(59,3);
  v3(61,1)=4;
  v3(61,2)=9267;
  v3(61,3)=  v3(59,3);
  v3(62,1)=4;
  v3(62,2)=10515;
  v3(62,3)=  v3(59,3);
  v3(63,1)=4;
  v3(63,2)=12867;
  v3(63,3)=  v3(59,3);
  v3(64,1)=4;
  v3(64,2)=12915;
  v3(64,3)=  v3(59,3);
  v3(65,1)=4;
  v3(65,2)=10365;
  v3(65,3)=(-(exp(y(15))*exp(y(21))));
  v3(66,1)=4;
  v3(66,2)=9117;
  v3(66,3)=  v3(65,3);
  v3(67,1)=4;
  v3(67,2)=9165;
  v3(67,3)=  v3(65,3);
  v3(68,1)=5;
  v3(68,2)=3256;
  v3(68,3)=(-(T491-y(18)*T499));
  v3(69,1)=5;
  v3(69,2)=3881;
  v3(69,3)=(-(T177*(T305+T18*T18*getPowerDeriv(T64,(-params(1)),3))-y(18)*T505));
  v3(70,1)=5;
  v3(70,2)=3257;
  v3(70,3)=  v3(69,3);
  v3(71,1)=5;
  v3(71,2)=3281;
  v3(71,3)=  v3(69,3);
  v3(72,1)=5;
  v3(72,2)=3906;
  v3(72,3)=(-(T177*T177*T18*getPowerDeriv(T64,(-params(1)),3)+T305*T328-y(18)*T517));
  v3(73,1)=5;
  v3(73,2)=3282;
  v3(73,3)=  v3(72,3);
  v3(74,1)=5;
  v3(74,2)=3882;
  v3(74,3)=  v3(72,3);
  v3(75,1)=5;
  v3(75,2)=3907;
  v3(75,3)=(-(T539-y(18)*T552));
  v3(76,1)=5;
  v3(76,2)=7162;
  v3(76,3)=exp(y(12));
  v3(77,1)=5;
  v3(77,2)=10756;
  v3(77,3)=T312;
  v3(78,1)=5;
  v3(78,2)=3268;
  v3(78,3)=  v3(77,3);
  v3(79,1)=5;
  v3(79,2)=3556;
  v3(79,3)=  v3(77,3);
  v3(80,1)=5;
  v3(80,2)=10781;
  v3(80,3)=T318;
  v3(81,1)=5;
  v3(81,2)=3293;
  v3(81,3)=  v3(80,3);
  v3(82,1)=5;
  v3(82,2)=3557;
  v3(82,3)=  v3(80,3);
  v3(83,1)=5;
  v3(83,2)=3893;
  v3(83,3)=  v3(80,3);
  v3(84,1)=5;
  v3(84,2)=4181;
  v3(84,3)=  v3(80,3);
  v3(85,1)=5;
  v3(85,2)=10757;
  v3(85,3)=  v3(80,3);
  v3(86,1)=5;
  v3(86,2)=10782;
  v3(86,3)=T338;
  v3(87,1)=5;
  v3(87,2)=3918;
  v3(87,3)=  v3(86,3);
  v3(88,1)=5;
  v3(88,2)=4182;
  v3(88,3)=  v3(86,3);
  v3(89,1)=7;
  v3(89,2)=3256;
  v3(89,3)=T89*T491+y(18)*(-T89)*T499;
  v3(90,1)=7;
  v3(90,2)=3881;
  v3(90,3)=T89*T177*(T305+T18*T18*getPowerDeriv(T64,(-params(1)),3))+T187*T307+y(18)*((-T89)*T505+(-T187)*T312);
  v3(91,1)=7;
  v3(91,2)=3257;
  v3(91,3)=  v3(90,3);
  v3(92,1)=7;
  v3(92,2)=3281;
  v3(92,3)=  v3(90,3);
  v3(93,1)=7;
  v3(93,2)=3906;
  v3(93,3)=T187*T177*T305+T89*(T177*T177*T18*getPowerDeriv(T64,(-params(1)),3)+T305*T328)+T187*T177*T305+T150*T360+y(18)*((-T187)*T318+(-T89)*T517+(-T187)*T318+(-params(6))*T18*T151*(-T360));
  v3(94,1)=7;
  v3(94,2)=3282;
  v3(94,3)=  v3(93,3);
  v3(95,1)=7;
  v3(95,2)=3882;
  v3(95,3)=  v3(93,3);
  v3(96,1)=7;
  v3(96,2)=3907;
  v3(96,3)=T187*T331+T178*T360+T187*T331+T89*T539+T187*T331+T178*T360+T178*T360+T67*T594+y(18)*((-T187)*T338+T182*(-T360)+(-T187)*T338+(-T89)*T552+(-T187)*T338+T182*(-T360)+T182*(-T360)+T77*(-T594))-(T40*T40*T40*T40*((-(T40*T15*(1-params(7))*exp(y(12))))*T40*T40+(-(T40*T15*(1-params(7))*exp(y(12))))*(T40*T40+T40*T40)-((-(T40*T15*(1-params(7))*exp(y(12))))*(T40*T40+T40*T40)+(-(T40*T15*(1-params(7))*exp(y(12))))*(T40*T40+T40*T40+T40*T40+T40*T40)))-T376*(T40*T40*(T40*T40+T40*T40)+T40*T40*(T40*T40+T40*T40)))/(T40*T40*T40*T40*T40*T40*T40*T40);
  v3(97,1)=7;
  v3(97,2)=4532;
  v3(97,3)=(-(T376/(T40*T40*T40*T40)));
  v3(98,1)=7;
  v3(98,2)=3908;
  v3(98,3)=  v3(97,3);
  v3(99,1)=7;
  v3(99,2)=3932;
  v3(99,3)=  v3(97,3);
  v3(100,1)=7;
  v3(100,2)=4557;
  v3(100,3)=(-T200);
  v3(101,1)=7;
  v3(101,2)=3933;
  v3(101,3)=  v3(100,3);
  v3(102,1)=7;
  v3(102,2)=4533;
  v3(102,3)=  v3(100,3);
  v3(103,1)=7;
  v3(103,2)=4558;
  v3(103,3)=T208;
  v3(104,1)=7;
  v3(104,2)=7032;
  v3(104,3)=(-(T376/(T40*T40*T40*T40)));
  v3(105,1)=7;
  v3(105,2)=3912;
  v3(105,3)=  v3(104,3);
  v3(106,1)=7;
  v3(106,2)=4032;
  v3(106,3)=  v3(104,3);
  v3(107,1)=7;
  v3(107,2)=7057;
  v3(107,3)=(-T200);
  v3(108,1)=7;
  v3(108,2)=3937;
  v3(108,3)=  v3(107,3);
  v3(109,1)=7;
  v3(109,2)=4033;
  v3(109,3)=  v3(107,3);
  v3(110,1)=7;
  v3(110,2)=4537;
  v3(110,3)=  v3(107,3);
  v3(111,1)=7;
  v3(111,2)=4657;
  v3(111,3)=  v3(107,3);
  v3(112,1)=7;
  v3(112,2)=7033;
  v3(112,3)=  v3(107,3);
  v3(113,1)=7;
  v3(113,2)=7058;
  v3(113,3)=T208;
  v3(114,1)=7;
  v3(114,2)=4562;
  v3(114,3)=  v3(113,3);
  v3(115,1)=7;
  v3(115,2)=4658;
  v3(115,3)=  v3(113,3);
  v3(116,1)=7;
  v3(116,2)=7157;
  v3(116,3)=(-T200);
  v3(117,1)=7;
  v3(117,2)=4037;
  v3(117,3)=  v3(116,3);
  v3(118,1)=7;
  v3(118,2)=7037;
  v3(118,3)=  v3(116,3);
  v3(119,1)=7;
  v3(119,2)=7158;
  v3(119,3)=T208;
  v3(120,1)=7;
  v3(120,2)=4662;
  v3(120,3)=  v3(119,3);
  v3(121,1)=7;
  v3(121,2)=7062;
  v3(121,3)=  v3(119,3);
  v3(122,1)=7;
  v3(122,2)=7162;
  v3(122,3)=T208;
  v3(123,1)=7;
  v3(123,2)=10756;
  v3(123,3)=(-T89)*T312;
  v3(124,1)=7;
  v3(124,2)=3268;
  v3(124,3)=  v3(123,3);
  v3(125,1)=7;
  v3(125,2)=3556;
  v3(125,3)=  v3(123,3);
  v3(126,1)=7;
  v3(126,2)=10781;
  v3(126,3)=(-T89)*T318+(-params(6))*T18*T151*(-T187);
  v3(127,1)=7;
  v3(127,2)=3293;
  v3(127,3)=  v3(126,3);
  v3(128,1)=7;
  v3(128,2)=3557;
  v3(128,3)=  v3(126,3);
  v3(129,1)=7;
  v3(129,2)=3893;
  v3(129,3)=  v3(126,3);
  v3(130,1)=7;
  v3(130,2)=4181;
  v3(130,3)=  v3(126,3);
  v3(131,1)=7;
  v3(131,2)=10757;
  v3(131,3)=  v3(126,3);
  v3(132,1)=7;
  v3(132,2)=10782;
  v3(132,3)=T182*(-T187)+(-T89)*T338+T182*(-T187)+T77*(-T360);
  v3(133,1)=7;
  v3(133,2)=3918;
  v3(133,3)=  v3(132,3);
  v3(134,1)=7;
  v3(134,2)=4182;
  v3(134,3)=  v3(132,3);
  v3(135,1)=8;
  v3(135,2)=11719;
  v3(135,3)=T218;
  v3(136,1)=8;
  v3(136,2)=652;
  v3(136,3)=exp(y(12))*params(8)*(-exp(y(2)));
  v3(137,1)=8;
  v3(137,2)=6094;
  v3(137,3)=(-(y(17)*exp(y(21))*T245));
  v3(138,1)=8;
  v3(138,2)=11494;
  v3(138,3)=  v3(137,3);
  v3(139,1)=8;
  v3(139,2)=11710;
  v3(139,3)=  v3(137,3);
  v3(140,1)=8;
  v3(140,2)=5869;
  v3(140,3)=(-(y(17)*exp(y(21))*T388));
  v3(141,1)=8;
  v3(141,2)=6085;
  v3(141,3)=  v3(140,3);
  v3(142,1)=8;
  v3(142,2)=11485;
  v3(142,3)=  v3(140,3);
  v3(143,1)=8;
  v3(143,2)=5860;
  v3(143,3)=exp(y(12))*params(8)*exp(y(10))-y(17)*exp(y(21))*(params(8)*(-exp(y(10)))+(T387*((-(exp(y(10))*params(7)*exp(y(19))))*exp(y(10))*exp(y(10))+T385-(T385+(-(exp(y(10))*params(7)*exp(y(19))))*(T383+T383)))-((-(exp(y(10))*params(7)*exp(y(19))))*exp(y(10))*exp(y(10))-T385)*(exp(y(10))*exp(y(10))*T383+exp(y(10))*exp(y(10))*T383))/(T387*T387));
  v3(144,1)=8;
  v3(144,2)=12370;
  v3(144,3)=T255;
  v3(145,1)=8;
  v3(145,2)=6902;
  v3(145,3)=exp(y(12))*params(8)*(-exp(y(2)));
  v3(146,1)=8;
  v3(146,2)=662;
  v3(146,3)=  v3(145,3);
  v3(147,1)=8;
  v3(147,2)=902;
  v3(147,3)=  v3(145,3);
  v3(148,1)=8;
  v3(148,2)=7110;
  v3(148,3)=exp(y(12))*params(8)*exp(y(10));
  v3(149,1)=8;
  v3(149,2)=5862;
  v3(149,3)=  v3(148,3);
  v3(150,1)=8;
  v3(150,2)=5910;
  v3(150,3)=  v3(148,3);
  v3(151,1)=8;
  v3(151,2)=7152;
  v3(151,3)=exp(y(12))*params(8)*(-exp(y(2)));
  v3(152,1)=8;
  v3(152,2)=912;
  v3(152,3)=  v3(151,3);
  v3(153,1)=8;
  v3(153,2)=6912;
  v3(153,3)=  v3(151,3);
  v3(154,1)=8;
  v3(154,2)=7160;
  v3(154,3)=exp(y(12))*params(8)*exp(y(10));
  v3(155,1)=8;
  v3(155,2)=5912;
  v3(155,3)=  v3(154,3);
  v3(156,1)=8;
  v3(156,2)=7112;
  v3(156,3)=  v3(154,3);
  v3(157,1)=8;
  v3(157,2)=7162;
  v3(157,3)=exp(y(12))*(1+params(8)*(exp(y(10))-exp(y(2))));
  v3(158,1)=8;
  v3(158,2)=12969;
  v3(158,3)=T218;
  v3(159,1)=8;
  v3(159,2)=11721;
  v3(159,3)=  v3(158,3);
  v3(160,1)=8;
  v3(160,2)=11769;
  v3(160,3)=  v3(158,3);
  v3(161,1)=8;
  v3(161,2)=12744;
  v3(161,3)=(-(y(17)*exp(y(21))*T245));
  v3(162,1)=8;
  v3(162,2)=6096;
  v3(162,3)=  v3(161,3);
  v3(163,1)=8;
  v3(163,2)=6144;
  v3(163,3)=  v3(161,3);
  v3(164,1)=8;
  v3(164,2)=11496;
  v3(164,3)=  v3(161,3);
  v3(165,1)=8;
  v3(165,2)=11760;
  v3(165,3)=  v3(161,3);
  v3(166,1)=8;
  v3(166,2)=12960;
  v3(166,3)=  v3(161,3);
  v3(167,1)=8;
  v3(167,2)=12735;
  v3(167,3)=(-(y(17)*exp(y(21))*(params(8)*(-exp(y(10)))+T388)));
  v3(168,1)=8;
  v3(168,2)=5871;
  v3(168,3)=  v3(167,3);
  v3(169,1)=8;
  v3(169,2)=6135;
  v3(169,3)=  v3(167,3);
  v3(170,1)=8;
  v3(170,2)=12995;
  v3(170,3)=T255;
  v3(171,1)=8;
  v3(171,2)=12371;
  v3(171,3)=  v3(170,3);
  v3(172,1)=8;
  v3(172,2)=12395;
  v3(172,3)=  v3(170,3);
  v3(173,1)=8;
  v3(173,2)=13019;
  v3(173,3)=T218;
  v3(174,1)=8;
  v3(174,2)=11771;
  v3(174,3)=  v3(173,3);
  v3(175,1)=8;
  v3(175,2)=12971;
  v3(175,3)=  v3(173,3);
  v3(176,1)=8;
  v3(176,2)=13010;
  v3(176,3)=(-(y(17)*exp(y(21))*(T245+params(8)*(-exp(y(10))))));
  v3(177,1)=8;
  v3(177,2)=6146;
  v3(177,3)=  v3(176,3);
  v3(178,1)=8;
  v3(178,2)=12746;
  v3(178,3)=  v3(176,3);
  v3(179,1)=8;
  v3(179,2)=13020;
  v3(179,3)=T255;
  v3(180,1)=8;
  v3(180,2)=12396;
  v3(180,3)=  v3(179,3);
  v3(181,1)=8;
  v3(181,2)=12996;
  v3(181,3)=  v3(179,3);
  v3(182,1)=8;
  v3(182,2)=13021;
  v3(182,3)=(-T114);
  v3(183,1)=8;
  v3(183,2)=10469;
  v3(183,3)=(-(exp(y(21))*T106));
  v3(184,1)=8;
  v3(184,2)=11669;
  v3(184,3)=  v3(183,3);
  v3(185,1)=8;
  v3(185,2)=11717;
  v3(185,3)=  v3(183,3);
  v3(186,1)=8;
  v3(186,2)=10244;
  v3(186,3)=(-(exp(y(21))*T245));
  v3(187,1)=8;
  v3(187,2)=6044;
  v3(187,3)=  v3(186,3);
  v3(188,1)=8;
  v3(188,2)=6092;
  v3(188,3)=  v3(186,3);
  v3(189,1)=8;
  v3(189,2)=10460;
  v3(189,3)=  v3(186,3);
  v3(190,1)=8;
  v3(190,2)=11492;
  v3(190,3)=  v3(186,3);
  v3(191,1)=8;
  v3(191,2)=11660;
  v3(191,3)=  v3(186,3);
  v3(192,1)=8;
  v3(192,2)=10235;
  v3(192,3)=(-(exp(y(21))*(params(8)*(-exp(y(10)))+T388)));
  v3(193,1)=8;
  v3(193,2)=5867;
  v3(193,3)=  v3(192,3);
  v3(194,1)=8;
  v3(194,2)=6035;
  v3(194,3)=  v3(192,3);
  v3(195,1)=8;
  v3(195,2)=10495;
  v3(195,3)=(-(exp(y(21))*params(8)*exp(y(20))));
  v3(196,1)=8;
  v3(196,2)=12295;
  v3(196,3)=  v3(195,3);
  v3(197,1)=8;
  v3(197,2)=12367;
  v3(197,3)=  v3(195,3);
  v3(198,1)=8;
  v3(198,2)=10519;
  v3(198,3)=(-(exp(y(21))*T106));
  v3(199,1)=8;
  v3(199,2)=10471;
  v3(199,3)=  v3(198,3);
  v3(200,1)=8;
  v3(200,2)=11671;
  v3(200,3)=  v3(198,3);
  v3(201,1)=8;
  v3(201,2)=11767;
  v3(201,3)=  v3(198,3);
  v3(202,1)=8;
  v3(202,2)=12919;
  v3(202,3)=  v3(198,3);
  v3(203,1)=8;
  v3(203,2)=12967;
  v3(203,3)=  v3(198,3);
  v3(204,1)=8;
  v3(204,2)=10510;
  v3(204,3)=(-(exp(y(21))*(T245+params(8)*(-exp(y(10))))));
  v3(205,1)=8;
  v3(205,2)=6046;
  v3(205,3)=  v3(204,3);
  v3(206,1)=8;
  v3(206,2)=6142;
  v3(206,3)=  v3(204,3);
  v3(207,1)=8;
  v3(207,2)=10246;
  v3(207,3)=  v3(204,3);
  v3(208,1)=8;
  v3(208,2)=12742;
  v3(208,3)=  v3(204,3);
  v3(209,1)=8;
  v3(209,2)=12910;
  v3(209,3)=  v3(204,3);
  v3(210,1)=8;
  v3(210,2)=10520;
  v3(210,3)=(-(exp(y(21))*params(8)*exp(y(20))));
  v3(211,1)=8;
  v3(211,2)=10496;
  v3(211,3)=  v3(210,3);
  v3(212,1)=8;
  v3(212,2)=12296;
  v3(212,3)=  v3(210,3);
  v3(213,1)=8;
  v3(213,2)=12392;
  v3(213,3)=  v3(210,3);
  v3(214,1)=8;
  v3(214,2)=12920;
  v3(214,3)=  v3(210,3);
  v3(215,1)=8;
  v3(215,2)=12992;
  v3(215,3)=  v3(210,3);
  v3(216,1)=8;
  v3(216,2)=10521;
  v3(216,3)=(-(exp(y(21))*T113));
  v3(217,1)=8;
  v3(217,2)=12921;
  v3(217,3)=  v3(216,3);
  v3(218,1)=8;
  v3(218,2)=13017;
  v3(218,3)=  v3(216,3);
  v3(219,1)=10;
  v3(219,2)=3256;
  v3(219,3)=(-(T18*T161+T18*T400+T18*T400+T18*(T400+T18*T18*getPowerDeriv(T74,(-params(6)),3))));
  v3(220,1)=10;
  v3(220,2)=3881;
  v3(220,3)=(-(T180*(T400+T18*T18*getPowerDeriv(T74,(-params(6)),3))));
  v3(221,1)=10;
  v3(221,2)=3257;
  v3(221,3)=  v3(220,3);
  v3(222,1)=10;
  v3(222,2)=3281;
  v3(222,3)=  v3(220,3);
  v3(223,1)=10;
  v3(223,2)=3906;
  v3(223,3)=(-(T180*T180*T18*getPowerDeriv(T74,(-params(6)),3)+(-(T72*T326))*T400));
  v3(224,1)=10;
  v3(224,2)=3282;
  v3(224,3)=  v3(223,3);
  v3(225,1)=10;
  v3(225,2)=3882;
  v3(225,3)=  v3(223,3);
  v3(226,1)=10;
  v3(226,2)=3907;
  v3(226,3)=(-((-(T72*T326))*T180*T399+T180*((-(T72*T326))*T399+T180*T180*getPowerDeriv(T74,(-params(6)),3))+(-(T72*T326))*T180*T399+T161*(-(T72*T534))));
  v3(227,1)=11;
  v3(227,2)=3256;
  v3(227,3)=(-((T18*T164+T18*T412+T18*T412+T18*(T412+T18*T18*getPowerDeriv(T18-T73,1-params(1),3)))/(1-params(1))));
  v3(228,1)=11;
  v3(228,2)=3881;
  v3(228,3)=(-(T180*(T412+T18*T18*getPowerDeriv(T18-T73,1-params(1),3))/(1-params(1))));
  v3(229,1)=11;
  v3(229,2)=3257;
  v3(229,3)=  v3(228,3);
  v3(230,1)=11;
  v3(230,2)=3281;
  v3(230,3)=  v3(228,3);
  v3(231,1)=11;
  v3(231,2)=3906;
  v3(231,3)=(-((T180*T180*T18*getPowerDeriv(T18-T73,1-params(1),3)+(-(T72*T326))*T412)/(1-params(1))));
  v3(232,1)=11;
  v3(232,2)=3282;
  v3(232,3)=  v3(231,3);
  v3(233,1)=11;
  v3(233,2)=3882;
  v3(233,3)=  v3(231,3);
  v3(234,1)=11;
  v3(234,2)=3907;
  v3(234,3)=(-(((-(T72*T326))*T180*T411+T180*((-(T72*T326))*T411+T180*T180*getPowerDeriv(T18-T73,1-params(1),3))+(-(T72*T326))*T180*T411+T164*(-(T72*T534)))/(1-params(1))));
  v3(235,1)=12;
  v3(235,2)=9115;
  v3(235,3)=exp(y(15));
  v3(236,1)=13;
  v3(236,2)=3256;
  v3(236,3)=T18/T15;
  v3(237,1)=13;
  v3(237,2)=4506;
  v3(237,3)=(-(T15*T18))/T211;
  v3(238,1)=13;
  v3(238,2)=3258;
  v3(238,3)=  v3(237,3);
  v3(239,1)=13;
  v3(239,2)=3306;
  v3(239,3)=  v3(237,3);
  v3(240,1)=13;
  v3(240,2)=4556;
  v3(240,3)=(T211*(-(T15*T18))-(-(T15*T18))*(T211+T211))/(T211*T211);
  v3(241,1)=13;
  v3(241,2)=3308;
  v3(241,3)=  v3(240,3);
  v3(242,1)=13;
  v3(242,2)=4508;
  v3(242,3)=  v3(240,3);
  v3(243,1)=13;
  v3(243,2)=4558;
  v3(243,3)=(T211*T211*((-(T15*(T31+T18+exp(y(9)))))*T211+(-(T15*(T31+T18+exp(y(9)))))*(T211+T211)-((-(T15*(T31+T18+exp(y(9)))))*(T211+T211)+(-(T15*(T31+T18+exp(y(9)))))*(T211+T211+T211+T211)))-((-(T15*(T31+T18+exp(y(9)))))*T211-(-(T15*(T31+T18+exp(y(9)))))*(T211+T211))*(T211*(T211+T211)+T211*(T211+T211)))/(T211*T211*T211*T211);
  v3(244,1)=13;
  v3(244,2)=5183;
  v3(244,3)=(T211*(-(T15*exp(y(9))))-(T211+T211)*(-(T15*exp(y(9)))))/(T211*T211);
  v3(245,1)=13;
  v3(245,2)=4559;
  v3(245,3)=  v3(244,3);
  v3(246,1)=13;
  v3(246,2)=4583;
  v3(246,3)=  v3(244,3);
  v3(247,1)=13;
  v3(247,2)=5208;
  v3(247,3)=(-(T15*exp(y(9))))/T211;
  v3(248,1)=13;
  v3(248,2)=4584;
  v3(248,3)=  v3(247,3);
  v3(249,1)=13;
  v3(249,2)=5184;
  v3(249,3)=  v3(247,3);
  v3(250,1)=13;
  v3(250,2)=5209;
  v3(250,3)=exp(y(9))/T15;
  v3(251,1)=13;
  v3(251,2)=808;
  v3(251,3)=(T211*(-(T15*T225))-(T211+T211)*(-(T15*T225)))/(T211*T211);
  v3(252,1)=13;
  v3(252,2)=4408;
  v3(252,3)=  v3(251,3);
  v3(253,1)=13;
  v3(253,2)=4552;
  v3(253,3)=  v3(251,3);
  v3(254,1)=13;
  v3(254,2)=658;
  v3(254,3)=(-(T15*T276))/T211;
  v3(255,1)=13;
  v3(255,2)=802;
  v3(255,3)=  v3(254,3);
  v3(256,1)=13;
  v3(256,2)=4402;
  v3(256,3)=  v3(254,3);
  v3(257,1)=13;
  v3(257,2)=652;
  v3(257,3)=T456/T15;
  v3(258,1)=13;
  v3(258,2)=5808;
  v3(258,3)=(T211*(-(T15*T238))-(T211+T211)*(-(T15*T238)))/(T211*T211);
  v3(259,1)=13;
  v3(259,2)=4560;
  v3(259,3)=  v3(258,3);
  v3(260,1)=13;
  v3(260,2)=4608;
  v3(260,3)=  v3(258,3);
  v3(261,1)=13;
  v3(261,2)=5658;
  v3(261,3)=(-(T15*T24*exp(y(10))*2*(-exp(y(2)))))/T211;
  v3(262,1)=13;
  v3(262,2)=810;
  v3(262,3)=  v3(261,3);
  v3(263,1)=13;
  v3(263,2)=858;
  v3(263,3)=  v3(261,3);
  v3(264,1)=13;
  v3(264,2)=4410;
  v3(264,3)=  v3(261,3);
  v3(265,1)=13;
  v3(265,2)=4602;
  v3(265,3)=  v3(261,3);
  v3(266,1)=13;
  v3(266,2)=5802;
  v3(266,3)=  v3(261,3);
  v3(267,1)=13;
  v3(267,2)=5652;
  v3(267,3)=T445;
  v3(268,1)=13;
  v3(268,2)=660;
  v3(268,3)=  v3(267,3);
  v3(269,1)=13;
  v3(269,2)=852;
  v3(269,3)=  v3(267,3);
  v3(270,1)=13;
  v3(270,2)=5858;
  v3(270,3)=(-(T15*T284))/T211;
  v3(271,1)=13;
  v3(271,2)=4610;
  v3(271,3)=  v3(270,3);
  v3(272,1)=13;
  v3(272,2)=5810;
  v3(272,3)=  v3(270,3);
  v3(273,1)=13;
  v3(273,2)=5852;
  v3(273,3)=T445;
  v3(274,1)=13;
  v3(274,2)=860;
  v3(274,3)=  v3(273,3);
  v3(275,1)=13;
  v3(275,2)=5660;
  v3(275,3)=  v3(273,3);
  v3(276,1)=13;
  v3(276,2)=5860;
  v3(276,3)=T460/T15;
  v3(277,1)=14;
  v3(277,2)=4551;
  v3(277,3)=(-T451);
  v3(278,1)=14;
  v3(278,2)=183;
  v3(278,3)=  v3(277,3);
  v3(279,1)=14;
  v3(279,2)=4383;
  v3(279,3)=  v3(277,3);
  v3(280,1)=14;
  v3(280,2)=4555;
  v3(280,3)=T451;
  v3(281,1)=14;
  v3(281,2)=2683;
  v3(281,3)=  v3(280,3);
  v3(282,1)=14;
  v3(282,2)=4483;
  v3(282,3)=  v3(280,3);
  v3(283,1)=14;
  v3(283,2)=4558;
  v3(283,3)=(-((y(1)-y(5))*(T211*T211*((-T15)*T211+(-T15)*(T211+T211)-((-T15)*(T211+T211)+(-T15)*(T211+T211+T211+T211)))-((-T15)*T211-(-T15)*(T211+T211))*(T211*(T211+T211)+T211*(T211+T211)))/(T211*T211*T211*T211)));
  g3 = sparse(v3(:,1),v3(:,2),v3(:,3),14,15625);
end
end