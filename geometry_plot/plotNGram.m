function [x,y]=plotNGram(xCenter,yCenter,innerRad,outerRad,N,lineSpec)
if nargin<6
  lineSpec='';
  end

  [x,y] = calcNGram(innerRad,outerRad,N);
  x=x+xCenter;
  y=y+yCenter;
  plot(x,y,lineSpec);
  end
