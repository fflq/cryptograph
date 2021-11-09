
flqcrt(21, [3,7], [2,5]);
flqcrt(10, [2,5], [0,3]);
flqcrt(3*5*7, [3,5,7], [2,3,2]);
flqcrt(3*5*7, [3,5,7], [0,0,0]);
flqcrt(2*3*4*1*6*5*7, [2,3,4,1,6,5,7], [1,2,3,4,5,6,0]);
flqcrt(12*5*7, [12,5,7], [11,6,0])

function ret = flqcrt(n, ds, xs)
    % 实际相等
    len = min(length(ds), length(xs)) ;

    x = 0 ;
    for i = 1:len
        yi = mulinv(n/ds(i), ds(i)) ;
        x = mod(x+(yi*xs(i)*n/ds(i)), n) ;
    end
    ret = x ;
end

% 乘法逆元
function y = mulinv(x, p)
    x = mod(x, p) ;
    for y = 1:p
        if (1 == mod(x*y, p))
            return ;
        end
    end
end
