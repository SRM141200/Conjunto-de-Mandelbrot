
mandelbrot_check(-0.21+0.74i,512)

function [inSet] = mandelbrot_check(c, maxIter)
z= 0;
counter = 0;

while abs(z) < 2 && counter < maxIter
    z = z^2 +c;
    counter = counter+1;
end

if counter == maxIter
    inSet=true;
else

   inSet=false;

end

end
