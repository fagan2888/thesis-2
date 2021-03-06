function [pf,eu] = guess(P,S,G,O)

% pf = guess(P,S,G) 
%   Sets the initial policy functions
% Inputs:
%   P : structure of parameters
%   S : structure of steady state values 
%   G : structure of grids
% Outputs:
%  pf : structure of policy functions

%----------------------------------------------------------------------
% log-linear solution - ZLB not imposed
%----------------------------------------------------------------------
V = variables;
[T,~,eu] = linmodel(P,S,V);
    
% Transform discretized state space to percent deviation from steady state
g_gr_per = G.g_gr./P.g - 1;
s_gr_per = G.s_gr/P.s - 1;
mp_gr_per = G.mp_gr;
in_gr_per = G.in_gr./S.i - 1;

% Calculate linear policy functions on discretized state space    
linpf_c = zeros(G.griddim);
linpf_pigap = zeros(G.griddim);
state = [g_gr_per(:),s_gr_per(:),mp_gr_per(:),in_gr_per(:)]';
linpf_c(:) = T(V.c,[V.g,V.s,V.mp,V.in])*state;
linpf_pigap(:) = T(V.pi,[V.g,V.s,V.mp,V.in])*state;
  
% Convert back to levels
pf.c = S.c*(1 + linpf_c);
pf.pigap = 1 + linpf_pigap;