%%Final Proj

%Decision Variables

x1 = optimvar('Sapal', 'LowerBound', 0, 'UpperBound', 40); 
x2 = optimvar('Kangkong', 'LowerBound', 0, 'UpperBound', Inf); 
x3 = optimvar('Kamote', 'LowerBound', 0, 'UpperBound', 50); 
x4 = optimvar('Kamoteng_Kahoy', 'LowerBound', 0, 'UpperBound', 40); 
x5 = optimvar('Bani', 'LowerBound', 0, 'UpperBound', Inf);
x6 = optimvar('Azolla', 'LowerBound', 0, 'UpperBound', Inf); 
x7 = optimvar('Ipil_ipil', 'LowerBound', 0, 'UpperBound', 10); 
x8 = optimvar('Gabi', 'LowerBound', 0, 'UpperBound', 80); 
x9 = optimvar('Madre_de_Agua', 'LowerBound', 0, 'UpperBound', Inf); 
x10 = optimvar('Water_Lily', 'LowerBound', 0, 'UpperBound', Inf); 

%x11 = optimvar('Amount_of_Ricebran_1', 'LowerBound', 0, 'UpperBound', 25); 
%x12 = optimvar('Amount_of_Ricebran_2', 'LowerBound', 0, 'UpperBound', 25); 

%c1 = optimvar('Cost_of_Coconut_Residue', 'LowerBound', 0, 'UpperBound', 19); 
%c2 = optimvar('Cost_of_Water_Spinach', 'LowerBound', 0, 'UpperBound', 12.75); 
%c3 = optimvar('Cost_of_Sweet_Potato_Leaves', 'LowerBound', 0, 'UpperBound', 12.75); 
%c4 = optimvar('Cost_of_Cassava_Leaves', 'LowerBound', 0, 'UpperBound', 12.75); 
%c5 = optimvar('Cost_of_Banana_Pseudo_Stem', 'LowerBound', 0, 'UpperBound', 19); 
%c6 = optimvar('Cost_of_Duckweed_Fern', 'LowerBound', 0, 'UpperBound', 8.30); 
%c7 = optimvar('Cost_of_Lead_Tree_Leaves', 'LowerBound', 0, 'UpperBound', 8.30); 
%c8 = optimvar('Cost_of_Taro_Leaves', 'LowerBound', 0, 'UpperBound', 16.65); 
%c9 = optimvar('Cost_of_Madre_de_Agua_Leaves', 'LowerBound', 0, 'UpperBound', 9.50); 
%c10 = optimvar('Cost_of_Water_Hyacinth_Leaves', 'LowerBound', 0, 'UpperBound', 16.65); 
%c11 = optimvar('Cost_of_Ricebran_1', 'LowerBound', 0, 'UpperBound', 12.50); 
%c12 = optimvar('Cost_of_Ricebran_2', 'LowerBound', 0, 'UpperBound', 10);

%z1 = optimvar('Crude_Protein', 'LowerBound', 0, 'UpperBound', Inf); 
%z2 = optimvar('Crude_Fiber', 'LowerBound', 0, 'UpperBound', Inf); 
%z3 = optimvar('Crude_Fat', 'LowerBound', 0, 'UpperBound', Inf); 
%z4 = optimvar('Calcium', 'LowerBound', 0, 'UpperBound', Inf); 
%z5 = optimvar('Moisture', 'LowerBound', 0, 'UpperBound', Inf); 
%z6 = optimvar('Phosphorus', 'LowerBound', 0, 'UpperBound', Inf);

%Optimization Problem

prob = optimproblem('Objective', x1*20+x2*25+x3*35+x4*15.3+x5*19+x6*35+x7*8.30+x8*25+x9*9.50+x10*16.65, ...
    'ObjectiveSense', 'min');

%Constraints

prob.Constraints.c1 = 5.1*x1+28*x2+19.4*x3+14.7*x4+12.3*x5+24*x6+27.8*x7+7.67*x8+18.21*x9+21.6*x10 >= 16;
prob.Constraints.c2 = 31.9*x1+12*x2+10.2*x3+10.7*x4+20.5*x5+9.1*x6+10.4*x7+20*x8+12.5*x9+17.1*x10 <= 15;
prob.Constraints.c3 = 38.3*x1+3.8*x2+3.07*x3+0.8*x4+0.5*x5+3.3*x6+4.4*x7+3*x8+2.66*x9+2.1*x10 >= 4;
prob.Constraints.c4 = 0.6*x1+1.24*x2+1.79*x3+0.84*x4+1.16*x5+0.4*x6+0.54*x7+2*x8+5*x9+1.6*x10 >= 0.85;
prob.Constraints.c5 = 4.8*x1+5.32*x2+4.97*x3+10*x4+5*x5+14*x6+10*x7+14*x8+11.56*x9+10.5*x10 <= 10;
prob.Constraints.c6 = 0.6*x1+0.41*x2+0.24*x3+0.76*x4+0.01*x5+0.9*x6+0.29*x7+0.8*x8+0.41*x9+0.5*x10 >= 0.5;
prob.Constraints.c7 = x1+x2+x3+x4+x5+x6+x7+x8+x9+x10 == 1;

prob1 = prob2struct(prob);
[sol, fval] = solve(prob)

