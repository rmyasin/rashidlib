function [xvec,yvec] = calcArc(x,y,r,thetaStart,thetaEnd,N)
  if nargin<6
    N=50;
  endif

  theta=linspace(thetaStart,thetaEnd,N);

  xvec = x+r*cos(theta);
  yvec = y+r*sin(theta);


