func = @(x) (668.06.*(1-exp(-0.146843.*x))./x)-40;
func_der = @(x)  (exp(-0.146843.*x)*(668.06-668.06*exp(0.146843.*x)+98.0999.*x))./x.^2;

x = 12;
x_next = x - func(x)/func_der(x);

disp('         x    x_next    f(x)    f_der(x_next)')
 
while x_next-x > 0.01
    disp([x', x_next', func(x)', func_der(x_next)',])
   
    x = x_next;
   
    x_next = x - func(x)/func_der(x);
end 


fprintf('The root of the function is %5.4f', x_next)

