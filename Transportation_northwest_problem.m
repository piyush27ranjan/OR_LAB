c = [10, 0, 20, 11;
    12, 7, 9, 20;
    0, 14, 16, 18];

supply = [15, 25, 5];
demand = [5, 15, 15, 10];

A = zeros(size(c));

i = 1;
j = 1;

while i <= 3 && j <= 4
    if i>3
        i = 3;
    end
    if j>4
        j = 4;
    end
    temp = min(supply(i), demand(j));
    A(i, j) = temp;
    
    if temp == supply(i)
        i = i+1;
        demand(j) = demand(j) - temp;
    elseif temp == demand(j)
        j = j+1;
        supply(i) = supply(i) - temp;
    end
end
