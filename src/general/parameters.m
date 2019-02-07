function P = parameters

% Calibrated Parameters
P.beta     = 0.9949;    % Discount factor
P.thetap   = 6;         % Elasticity of subs. between intermediate goods
P.n        = 1/3;       % Steady state labor
P.eta      = 1/3;       % Inverse frish elasticity of labor supply
P.g        = 1.0034;    % Mean growth rate
P.pi       = 1.0053;   	% Inflation target
P.s        = 1.0058;    % Average risk premium

% Firm
P.alpha    = 0.33;     % Capital share
P.delta    = 0.025;    % Depreciation

% Parameters for DGP and Estimated parameters
P.varphip  = 100;       % Rotemberg price adjustment cost
P.h        = 0;  	% Habit persistence
P.rhos     = 0.80;      % Persistence
P.rhoi     = 0.80; 	    % Persistence
P.sigg     = 0.005;     % Standard deviation
P.sigs     = 0.005;     % Standard deviation
P.sigmp    = 0.002;     % Standard deviation
P.phipi    = 2.0;       % Inflation responsiveness
P.phiy     = 0;       % Output responsiveness

% Algorithm
P.tol      = 1e-6;      % Convergence criterion