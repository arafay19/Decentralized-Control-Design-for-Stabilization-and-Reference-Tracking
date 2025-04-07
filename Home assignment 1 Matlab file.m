% Task A)

% The task is to design a decentrliyed controller. We determine the eigne values and then stability 
% of the system. The system is controllable and thus stabilizable. We can
% proceed with the design

eig (A);
Co;
rank (Co);

% Now we will split the input matrix and output matrix as B1 and C1 and
% also we design a sparse Feedback matrix for decentralied controller i.e
% F = [f1 f2 0;0 0 f3]. Also we divide the states into stable and unstable
% eien modes.

% Now we do some calculations to determne F matrix
Atilda = A*[x1;x2;x3]-[1;1;0]*[f1 f2 0]*[x1;x2;0]-[0;0;1]*[0 0 f3]*[0;0;x3];

% We seperate states form the matrix and the matrix will look like 
Abar;

% Now we know that we will calculate the characteristic polynomial equation
% of Abar using 
det (lamda -Abar);

% and we compare the coefficients with the desried eigen values
% characteristic polynomial equation. After cofficient comparison and
% solving simultaneous equation, we will find out the values of f1, f2 and
% f3. in matrix form F1 nad F2 will be 
F1;
F2;




Task B)
% Now considering the reference the tracking capability of the system, 
% we will take a look at designing a feed forward gain matrix V and its 
% impact on reference tracking.
%In reference tracking for state feedback controller (x=r) and input 
% now will have another components i.e V*r(t).

%So at steady state, we will take derivative of state as zero and equate
% the whole equation to zero. After equating, the only way to solve V is B 
% to be invertible. Since our B is not a square matrix, it is not 
% invertible and hence reference tracking wrt state can not be achieved 
% with our given system.


% In reference tracking for output feedback controller ($y=$r). In this 
% case So at steady state, we will take derivative of state as zero and 
% equate the whole equation to zero. After equating, the only way to solve 
% V is B and C to be invertible. Since our B and C are not a square 
% matrices, it is not invertible and hence reference tracking wrt output 
% can not be achieved with our given system.



