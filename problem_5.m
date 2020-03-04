x = -2:0.1:4;                        % set x from to -2 to 4 with small steps
C = [10 4 -5];                       % set three C's

plot(x,integrate(x,C(1)),'r--o');    % draw the integrated function with C=10
hold on;
plot(x,integrate(x,C(2)),'g--*');    % draw the integrated function with C=4
plot(x,integrate(x,C(3)),'b--.');    % draw the integrated function with C=-5
grid on;                             % turn the grid on
hold off;

% function that do integration
function y = integrate(x,C)
y = 3 / 4 * x.^4 - 2 * x.^3 + x.^2 / 2 - 4 .* x + C;  % calculated by hand
end