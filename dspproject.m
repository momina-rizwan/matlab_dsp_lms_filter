clc; 
clear; 
close all;

% 1. Desired Signal=
t = 0.001:0.001:1;                % Time vector
D = 2*sin(2*pi*50*t);             % Desired clean signal


% 2. Noisy Signal

n = numel(D);
noise = D(1:n) + 0.9* randn(1,n);       % corrupted signal
A = noise;                        % reference input signal

% 3. LMS Parameters

M = 25;                            % filter length
w = zeros(1,M);
wi = zeros(1,M); 
E=[];
mu = 0.0005;                      % step size

% 4. LMS Algorithm
for i=M:n
    E(i)=D(i)-wi*A(i:-1:i-M+1)';
    wi = wi + 2*mu*E(i)*A(i:-1:i-M+1);
end
Est = zeros(n,1);                % estimated output
for i = M:n
    
    % input vector (flip window)
    j = A(i:-1:i-M+1);  
    
    % filter output
    Est(i) = ((wi)*(j)');
       
end
  Err=Est'-D;


% 5. Plot Signals


subplot(4,1,1),plot(D);
title('Desired Signal');

subplot(4,1,2),plot(A);
title('Signal Corrupted with noise');

subplot(4,1,3),plot(Est);
title('Estimation signal');

subplot(4,1,4),plot(Err);
title('Error Signal');