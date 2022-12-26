# plotCircle

function h = plotCircle(x,y,r,N,offset,lineSpec)
  if nargin<4
    N=50;
  endif
  if nargin<5
    offset=0;
  endif
  if nargin<6
    lineSpec='';
  endif

  theta = linspace(0,2*pi,N+1)+offset;
  xvec = x+r*cos(theta);
  yvec = y+r*sin(theta);

  plot(xvec,yvec,lineSpec)
