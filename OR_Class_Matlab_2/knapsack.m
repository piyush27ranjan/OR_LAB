c = [16, 22, 12, 8];
w = [5, 7, 4, 3];

a = c./w;

all = [w; a; c]';

all_sorted = sortrows(all, 2);

space = 14;
i = 1;
z = 0;
go = true;
while go
    z = z + all_sorted(i, 3);
    space = space - all_sorted(i, 1);
    i = i+1;
    if space == 0
        go = false;
    elseif space < 0
        z = z - all_sorted(i-1, 3);   
        space = space + all_sorted(i-1, 1);
        go = false;
    end
end


