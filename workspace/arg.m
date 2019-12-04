

function arg = arg(p)
    arg = [];
    inar = functions(p); 
    inar = inar.function;
    inar = extractBetween(inar,'(',')');
    inargu = char(inar(1));
    for i = 2 : 3 : size(inargu,2)
        arg=[arg str2num(inargu(i))];
    end
end