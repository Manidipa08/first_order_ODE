//date : 2/12/21
//aim : To solve a first order linear ordinary differential equation using Modified Euler without iteration
clc
clear
function dy = f(x,y)
    dy = exp(-x)
endfunction
x0=0
y0=1
x=0:0.1:10
h=0.1
x(1)=x0
y(1)=y0
n=length(x)
disp("length :",n)
for i=1:n-1
    y(i+1)=y(i)+h*f(x(i),y(i))
end
disp("By Eulers method , y : ",y)
for i=1:n-1
    y(i+1)=y(i)+h*(f(x(i),y(i))+f(x(i+1),y(i+1)))/2
end
plot(x',y,'-*g')
u=ode(y0,x0,x,f)
plot(x,u)
title("Plotting of first order linear ODE")
title color Red
title fontsize 4
xlabel("X")
xlabel color magenta fontsize 4
ylabel("f(X)")
ylabel color magenta fontsize 4
legend(["By Modified Eulers method";"using inbuilt command"])
