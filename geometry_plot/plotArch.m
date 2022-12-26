function plotArch(basePoint,radius)
  N=15;
  [xvec1,yvec1] = calcArc(basePoint(1)-radius,basePoint(2),radius,pi,pi/2,N);
  [xvec2,yvec2] = calcArc(basePoint(1)-radius,basePoint(2)+2*radius,radius,-pi/2,0,N);
  [xvec3,yvec3] = calcArc(basePoint(1)+radius,basePoint(2)+2*radius,radius,pi,3*pi/2,N);
  [xvec4,yvec4] = calcArc(basePoint(1)+radius,basePoint(2),radius,pi/2,0,N);

  plot([xvec1,xvec2,xvec3,xvec4],[yvec1,yvec2,yvec3,yvec4]);
  end
