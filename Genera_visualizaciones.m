% %----------------------Conjunto abierto---------------------------%
% 
% x = 0; y = 0;% centro del círculo
%  r = 1;% radio
% rectangle('Position',[x-r,y-r,2*r,2*r],'Curvature',[1,1],...
% 	'FaceColor',[0.5 0.5 0.5],'EdgeColor',[0.1 0.1 0.1],'linewidth',1,'LineStyle','--')
% axis([-2 2 -2 2])
% axis square
% set(gca,'XTick',-4:1:4);
% set(gca,'YTick',-4:1:4);
% 
% %------------------Conjunto cerrado----------------------------%
% 
% x = 0; y = 0;% centro del círculo
%  r = 1;% radio
% rectangle('Position',[x-r,y-r,2*r,2*r],'Curvature',[1,1],...
% 	'FaceColor',[0.5 0.5 0.5],'EdgeColor',[0.1 0.1 0.1],'linewidth',1,'LineStyle','-')
% axis([-2 2 -2 2])
% axis square
% set(gca,'XTick',-4:1:4);
% set(gca,'YTick',-4:1:4);
% 
% %------------------Conjunto cerrado----------------------------%
% 
% x = 0; y = 0;% centro del círculo
%  r = 1;% radio
% rectangle('Position',[x-r,y-r,2*r,2*r],'Curvature',[1,1],...
% 	'FaceColor',[0.5 0.5 0.5],'EdgeColor',[0.1 0.1 0.1],'linewidth',1,'LineStyle','-')
% axis([-2 2 -2 2])
% axis square
% set(gca,'XTick',-4:1:4);
% set(gca,'YTick',-4:1:4);
% 
% %------------------Conjunto cerrado----------------------------%
% 
% x = 0; y = 0;% centro del círculo
%  r = 1;% radio
% rectangle('Position',[x-r,y-r,2*r,2*r],'Curvature',[1,1],...
% 	'FaceColor',[0.5 0.5 0.5],'EdgeColor',[0.1 0.1 0.1],'linewidth',1,'LineStyle','-')
% axis([-2 2 -2 2])
% axis square
% set(gca,'XTick',-4:1:4);
% set(gca,'YTick',-4:1:4);
% 
% 
% x = linspace(-3,3,1000);
% y = x.^2;
% fill(x,y,'g');

%------------------Conjunto mandelbrot----------------------------%

% mandelbrot_check(0,512)
% mandelbrot_check(1+0i,512)

clear
clc

step = 0.01;
Re_plot = -2:step:1;
Im_plot = -1:step:1;

hold on

for Re = Re_plot
    for Im = Im_plot
        c_in = Re + Im*1i;
        if(mandelbrot_check(c_in,512))
            plot(Re,Im,'r.')
        end
    end

end


function [inSet] = mandelbrot_check(c, maxIter)
z= 0;
counter = 0;

while abs(z) < 2 && counter < maxIter
    z = z^10 +c;
    counter = counter+1;
end

if counter == maxIter
    inSet=true;
else

   inSet = false;

end

end



