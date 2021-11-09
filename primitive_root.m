
flqprimitive_root(25, 20)
function ret = flqprimitive_root(n, en)
    for a = 1:n-1
        for m=1:en
            q = mod(mod(a^floor(m/2), n)*mod(a^ceil(m/2), n), n);
            if (1 == q)
                if(m == en)
                    disp(a);
                end
                break ;
            end
        end
    end
end
