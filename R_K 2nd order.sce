//Date : 02/12/21
//AIM : To solve a first order linear ordinary differential equation using RK 2nd order method
clc
clear
function Dy = f(x,y)
    Dy = exp(-x)
endfunction
x1=0
y1=1
x=0:0.1:10
h=0.1
exec('C:\Users\MANIDIPA BANERJEE\Desktop\SEM III MP LAB\First ODE_Exp 5\R_K 2nd func.sci', -1)
ans = RKsecond(x1,y1,x,f,h)
disp("y : ",ans')
plot(x',ans,'*r')
u=ode(y1,x1,x,f)
plot(x,u)
title("Plotting of first order linear ODE")
title color Red
title fontsize 4
xlabel("X")
xlabel color magenta fontsize 4
ylabel("f(X)")
ylabel color magenta fontsize 4
legend(["By RK_2";"using inbuilt command"])



