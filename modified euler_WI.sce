//date : 4/12/21
//aim : To solve a first order linear ordinary differential equation using Modified Euler method with iteration
clc
clear
function dy = f(x,y)
    dy = exp(-x)
endfunction
x0=0
y0=1
xn=10
h=0.1
x=x0:h:xn
n=(xn-x0)/h
yme_final=y0

for i=1:n
    ye=y0+h*f(x(i),y0)//euler method
    Error = 1
    while (Error>0.00001)
        yme = y0+(h/2)*(f(x(i),y0)+f(x(i+1),ye))//modified
        Error=abs(yme-ye)
        ye=yme
    end
    //disp("ye :",ye)
    y0=yme
    //disp("y0 : ",y0)
    yme_final=[yme_final yme]
    //disp("Final yme : ",yme_final)
end
disp(yme_final)
//Inbuilt command
y_inbuilt=ode(1,x0,x,f)
plot(x,yme_final,'*r')
plot(x,y_inbuilt)
title("Plotting of first order linear ODE")
title color Red
title fontsize 4
xlabel("X")
xlabel color magenta fontsize 4
ylabel("f(X)")
ylabel color magenta fontsize 4
legend(["By Modified Eulers_WI method";"using inbuilt command"])
