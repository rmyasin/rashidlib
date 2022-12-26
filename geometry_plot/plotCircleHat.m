function plotCircleHat(xCircleCenter,yCircleCenter,circleRadius,hatRadius,angleFromXAxis)
N=50;

arcEndTheta = asin(sqrt(hatRadius^2 - (hatRadius-circleRadius)^2)/hatRadius);


[x1,y1] = calcArc(xCircleCenter,yCircleCenter + hatRadius-circleRadius ,hatRadius,-pi/2,-pi/2+arcEndTheta);
[x2,y2] = calcArc(xCircleCenter,yCircleCenter - hatRadius+circleRadius,hatRadius,pi/2,pi/2-arcEndTheta);

R = [cos(angleFromXAxis) -sin(angleFromXAxis)
     sin(angleFromXAxis) cos(angleFromXAxis) ];

offset = repmat([xCircleCenter;yCircleCenter],1,N);
plotMat = R*([x1;y1]-offset)+ offset;
plot(plotMat(1,:),plotMat(2,:),'b')

plotMat = R*([x2;y2]-offset)+ offset;
plot(plotMat(1,:),plotMat(2,:),'b')



  end
