% Task A)

%%% The task is to design a decentrlized controller. We determine the eigen
% values and then stability 
% of the system. The system is controllable and thus stabilizable. We can
% proceed with the design
A;B;C;
eig (A);
Co;
rank (Co);

%%% Now we will split the input matrix and output matrix as B1 and C1 and
% also we design a sparse Feedback matrix for decentralied controller i.e
% F = [F1;F2]. Both F1 and F2 are (1X3 Matrices). Also we divide the states
% into stable and unstable
% eigen modes.
F1 = [f1 f2 0];
F2 = F = [0 0 f3];
syms x1 x2 x3 f1 f2 f3;
B1;B2;C1;x;C2;F1;F2;

%%% Now we do some calculations to determne F matrix as per the equations
% given in the lecture i.e
% Atilda = A*[x1;x2;x3]-B1*F1*[x1;x2;0]-B2*F2*[0;0;x3]

Atilda = A*[x1;x2;x3]-[1;1;0]*[f1 f2 0]*[x1;x2;0]-[0;0;1]*[0 0 f3]*[0;0;x3];

% We seperate states form the matrix and the matrix will look like 
Abar;

% Now we know that we will calculate the characteristic polynomial equation
% of Abar using
lamda;
det (lamda -Abar);

%%% and we compare the coefficients with the desried eigen values (-11)
% characteristic polynomial equation. After coefficient comparison and
% solving simultaneous equations, we will find out the values of f1, f2 and
% f3 in matrix form F1 nad F2 will be 
F1;
F2;


% Task B)

%%%% Now considering the reference the tracking capability of the system, 
% we will take a look at designing a feed forward gain matrix V and its 
% impact on reference tracking.

%%% In reference tracking at steady state (y=r). In this 
% case so at steady state, we will take derivative of state as zero and 
% equate the whole equation to zero. We can calculate the V matrix by
% taking inverse of fyr static matrix. We also put the values of f1,f2 and
% f3 to calculate Abarr that is to be used in this calculation.
Abarr;
fyr = -C*inv(Abarr)*B;

% Now we take the whole static matrix as Fyr = -C inv (Abarr) B and 
% calculate V Matrix using it. Using matlab Fyr is calculated as 
% Fyr = [-0.9109 0.0909;0.1012 -0.2727]. Now we make use inverse
% to calculate V matrix and our V matrix is a 2 by 2 matrix. 
% V = [-1.1400 -0.3800; -0.4231 -3.8077] 

V = inv(fyr);

% Task 3

% For task 3  we will distribute V into V1 and V2 in such a way that we can
% simulate it with the seperate feedforward matrix.


V1 = inv(-C1*inv(Abarr)*B1);
V2 = inv(-C2*inv(Abarr)*B2);

