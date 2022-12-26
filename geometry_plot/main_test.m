##mySq =

##plotSquare(5,5,5)
cla
hold on

xCenter=25;
yCenter=15;

r=15;
c=5;
%plotCircle(xCenter,yCenter,c);
##plotCircle(5,2,8)
##plotCircle(5,8,8)

r=15;
c=2;

for hatAngle = linspace(0,pi*2,9)
for r = [8]%[10,15]
##theta = asin(sqrt(r^2 - (r-c)^2)/r);
##[xplot,yplot] = calcArc(xCenter,yCenter + r-c ,r,-pi/2,-pi/2+theta);
##plot(xplot,yplot);
##[xplot,yplot]=calcArc(xCenter,yCenter - r+c,r,pi/2,pi/2-theta);
##plot(xplot,yplot);
if ~mod(hatAngle,pi/2)
  plotCircleHat(xCenter,yCenter,c,r*1.5,hatAngle)
else
  plotCircleHat(xCenter,yCenter,c,r,hatAngle)
end

axis equal
end
end

innerRad = 8;
outerRad = 8*sqrt(2-sqrt(2));
N = 8;
[xDraw,yDraw]=plotNGram(xCenter,yCenter,innerRad,outerRad,N);
hold on

% Fit an octagon to the outer points of the N Gram
## (probably a backwards way to do tesselation, but there should be a method derivable here)
[x,y,r]=fitCircle3Pt(xDraw(1),yDraw(1),xDraw(2),yDraw(2),xDraw(3),yDraw(3))
start=-pi+pi/8
[xCircle,yCircle] = calcArc(x,y,r,start,start+2*pi,9)
plot(xCircle,yCircle)

## Plot tesselated octagons with a 8gram in the middle null space
## MATH IS NOT EXACT,RADIUSES WERE JUST GUESSED
bigRadius=5;
smallRadius=2.05;
start=2*pi/8+2*pi/16;
for ii=1:8
  theta = ii*(2*pi)/8 - (2*pi)/8/2
  xCenter = bigRadius*cos(theta);
  yCenter = bigRadius*sin(theta);
  [xCircle,yCircle] = calcArc(xCenter,yCenter,smallRadius,start,start+2*pi,9)
  plot(xCircle,yCircle)
end

for ii=1:8
  theta = ii*(2*pi)/8 - (2*pi)/8/2
  xCenter = bigRadius*cos(theta)+9.2;
  yCenter = bigRadius*sin(theta);
  [xCircle,yCircle] = calcArc(xCenter,yCenter,smallRadius,start,start+2*pi,9)
  plot(xCircle,yCircle)
end

for ii=1:8
  theta = ii*(2*pi)/8 - (2*pi)/8/2
  xCenter = bigRadius*cos(theta)+9.2;
  yCenter = bigRadius*sin(theta)-9.2;
  [xCircle,yCircle] = calcArc(xCenter,yCenter,smallRadius,start,start+2*pi,9)
  plot(xCircle,yCircle)
end

for ii=1:8
  theta = ii*(2*pi)/8 - (2*pi)/8/2
  xCenter = bigRadius*cos(theta);
  yCenter = bigRadius*sin(theta)-9.2;
  [xCircle,yCircle] = calcArc(xCenter,yCenter,smallRadius,start,start+2*pi,9)
  plot(xCircle,yCircle)
end

for ii=1:8
  theta = ii*(2*pi)/8 - (2*pi)/8/2
  xCenter = bigRadius*cos(theta);
  yCenter = bigRadius*sin(theta)+13;
  [xCircle,yCircle] = calcArc(xCenter,yCenter,smallRadius,start,start+2*pi,9)
  plot(xCircle,yCircle)
end

for ii=1:8
  theta = ii*(2*pi)/8 - (2*pi)/8/2
  xCenter = bigRadius*cos(theta)-13;
  yCenter = bigRadius*sin(theta)+13;
  [xCircle,yCircle] = calcArc(xCenter,yCenter,smallRadius,start,start+2*pi,9)
  plot(xCircle,yCircle)
end

for ii=1:8
  theta = ii*(2*pi)/8 - (2*pi)/8/2
  xCenter = bigRadius*cos(theta)-13;
  yCenter = bigRadius*sin(theta);
  [xCircle,yCircle] = calcArc(xCenter,yCenter,smallRadius,start,start+2*pi,9)
  plot(xCircle,yCircle)
end

for ii=1:8
  theta = ii*(2*pi)/8 - (2*pi)/8/2
  xCenter = bigRadius*cos(theta)-13;
  yCenter = bigRadius*sin(theta)-9.2;
  [xCircle,yCircle] = calcArc(xCenter,yCenter,smallRadius,start,start+2*pi,9)
  plot(xCircle,yCircle)
end

for ii=1:8
  theta = ii*(2*pi)/8 - (2*pi)/8/2
  xCenter = bigRadius*cos(theta)+9.2;
  yCenter = bigRadius*sin(theta)+13;
  [xCircle,yCircle] = calcArc(xCenter,yCenter,smallRadius,start,start+2*pi,9)
  plot(xCircle,yCircle)
end
