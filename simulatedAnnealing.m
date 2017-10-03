function simulatedAnnealing = simulatedAnnealing()
X = -10 + (10+10)*rand();
Y = -10 + (10+10)*rand();
costOld = (4-2.1*X^2+(X^4/3))*X^2+(X*Y)+(-4 + 4*Y^2)*Y^2;
solution = [X,Y];
T = 1;
T_min = 0.00001;
a = 0.9;
while(T > T_min)
    i = 1;
    while (i <= 100)
        Xn = -10 + (10+10)*rand();
        Yn = -10 + (10+10)*rand();
        costNew = (4-2.1*Xn^2+(Xn^4/3))*Xn^2+(Xn*Yn)+(-4 + 4*Yn^2)*Yn^2;
        p = probability(costOld,costNew,T);
        if(costNew < costOld)
            solution = [Xn,Yn];
            costOld = costNew;
        elseif(p > rand())
            solution = [Xn,Yn];
            costOld = costNew;
        end
        i = i + 1;
    end
    T = T*a;
end
simulatedAnnealing = [solution,costOld];