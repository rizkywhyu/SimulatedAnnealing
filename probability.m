function probability = probability(costOld,costNew,T)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
probability = exp(-(costNew-costOld)/T);

end

