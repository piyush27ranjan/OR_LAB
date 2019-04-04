c = [[20, 46]; [15, 28]; [26, 35]; [50, 20]; [45, 15]; [1, 6]];
w = [20, 15, 30, 18, 20, 15];

xi = 0;
yi = 0;
w_sum = 0;
epsilon = 0.00001;

phi = @(x, y, w, a, b, epsilon) w/((x-a)^2 + (y-b)^2 + epsilon)^0.5;

for i = 1:length(w)
    xi = xi + w(i)*c(i,1);
end

for i = 1:length(w)
    yi = yi + w(i)*c(i,2);
end

for i = 1:length(w)
    w_sum = w_sum + w(i);
end

xi = xi/w_sum;
yi = yi/w_sum;

xf = 0;
yf = 0;
s = 0;
for i = 1:length(w)
    xf = xf + c(i, 1)*phi(xi, yi, w(i), c(i, 1), c(i, 2), epsilon);
    s = s + phi(xi, yi, w(i), c(i, 1), c(i, 2), epsilon);
end
    
for i = 1:length(w)
    yf = yf + c(i, 2)*phi(xi, yi, w(i), c(i, 1), c(i, 2), epsilon);
end
xf = xf/s;
yf = yf/s;

while abs(xf-xi) > 0.00001 && abs(yf-yi) > 0.00001 
    xi = xf;
    yi = yf;
    
    xf = 0;
    yf = 0;
    s = 0;
    for i = 1:length(w)
        xf = xf + c(i, 1)*phi(xi, yi, w(i), c(i, 1), c(i, 2), epsilon);
        s = s + phi(xi, yi, w(i), c(i, 1), c(i, 2), epsilon);
    end
    
    for i = 1:length(w)
        yf = yf + c(i, 2)*phi(xi, yi, w(i), c(i, 1), c(i, 2), epsilon);
    end
    xf = xf/s;
    yf = yf/s;
end
