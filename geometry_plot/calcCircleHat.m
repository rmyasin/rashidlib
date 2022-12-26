function plotCircleHat(xCircleCenter,yCircleCenter,circleRadius,hatRadius,angleFromXAxis)
N=50;

arcEndTheta = asin(sqrt(hatRadius^2 - (hatRadius-circleRadius)^2)/hatRadius);


[x1,y1] = calcArc(xCircleCenter,yCircleCenter + hatRadius-circleRadius ,hatRadius,-pi/2,-pi/2+arcEndTheta);
[x2,y2] = calcArc(xCircleCenter,yCircleCenter - hatRadius+circleRadius,hatRadius,pi/2,pi/2-arcEndTheta);


plotMat = [x1, x2;y1, y2;ones(1,2*N)];

H = [cos(arcEndTheta) -sin(arcEndTheta) xCircleCenter
     sin(arcEndTheta) cos(arcEndTheta) yCircleCenter
     0                9=0               1];

plotMat = H' * plotMat * H;

plot(plotMat(1,:),plotMat(2,:))

  end
