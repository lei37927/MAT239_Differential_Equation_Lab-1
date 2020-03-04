%%
% *Zhenyu Lei*      
%
% *MATLAB Lab 1*       
%
% *MAT 239*

format short
format compact

%%
% *Problem 1*
angle = 0:0.01:360;            % This chunk of code establishes angle with step 0.01
theta = [0.4 1.2 3.9 5.4 6.1]; % theta with 5 random number
r = 2;                         % radius is 2

x = r * cos(angle);            % x is rcos(angle)
y = r * sin(angle);            % y is rsin(angle)

x_theta = r * cos(theta);      % set the x coordinate for 5 random points
y_theta = r * sin(theta);      % set the y coordinate for 5 random points

hold on

plot(x,y);                     % plot the circle
plot(x_theta,y_theta,'*r');    % plot 5 random points
plot([0 x_theta(1)],[0 y_theta(1)]);
plot([0 x_theta(2)],[0 y_theta(2)]);
plot([0 x_theta(3)],[0 y_theta(3)]);  % plot 5 vectors
plot([0 x_theta(4)],[0 y_theta(4)]);
plot([0 x_theta(5)],[0 y_theta(5)]);
daspect([1 1 1]);              % set scale to 1:1

hold off


% I first draw a circle with radius 2, and then pick 5 random angles known
% as theta, then show the vectors that these angles represent, that can be
% a verification thet these vectors satisfy the Pythagorean identity.

%%
% *Problem 2*
x = 4:0.1:27;                         % set x from 4 to 27 with step 0.1
y = exp(x/30).*cos(x*4)./(x.^2+3);    % set y as given equation

plot(x,y,'o');                        % plot curve
hold on;
plot(x,y);                            % plot circle points
hold off;

axis([3,28,-0.06,0.06]);
grid on;
title('y=e^{x/30}*cos(4x)/(x^2+3)');
xlabel('x');
ylabel('y');


% I first divide x from 4 to 27 with the step 0.1, then make y equals the
% given equation of x. then plot every points with little circle, and hold
% the graph then plot the curve with respect to x and y.

% Then I set the range of axis, turn the grid on, add a title to it, set
% labels for x axis and y axis.

%%
% *Problem 3*
t = 0:0.001:10 * pi;   % set t from 0 to 10pi
x = 2 * sin(t);        % set x = 2sint
y = 2 * cos(t);        % set y = 2cost
z = 3 * t;             % set z = 3t

plot3(x,y,z);          % using plot3 to plot the graph

grid on;               % turn the grid on


% I just set t from 0 to 10pi (to get enough spiral, and set x,y,z as
% equations. and I plot it using plot3.

%%
% *Problem 4*
x = -2 * pi:0.01:2 * pi;         % set x from -2pi to 2pi with small steps
y = cos(x);                      % y equals cosx
T = 1 - x.^2 / 2 + x.^4 / 24;    % T follows given equation

plot(x,T,'b');                   % plot x and T with blue solid line
hold on;
plot(x,y,'g--');                 % plot x and y with green dashed line
axis tight;                      % set the arial limits
hold off;


% I just set x from -2pi to 2pi, and write T and y out. Then print them.

%%
% *Problem 5*
type('problem_5.m');
problem_5

%%
% *Problem 6*
f = @(a,b)(b * b * b - cos(a) * exp(b) / (a * a - b * b));  % define function
f(3,2)                                                      % output using f
clear f;                                                    % clear f
type('problem_6.m');                                        % prints the contents of the file problem_6.m
problem_6(3,2)                                              % output using problem_6


% I just first define a anonymous function f and output f(3,2) for
% checking, and then I write a function problem_6 in a different file using
% the same equation as f, and then output it again with parameters 3,2.
% checking it's the same.