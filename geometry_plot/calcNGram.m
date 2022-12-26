function [x,y] = calcNGram(innerRad,outerRad,N)

 distance = 2*pi/N;

 thetaVecInner = linspace(0,2*pi-distance,N);
 thetaVecOuter = linspace(0,2*pi-distance,N)+distance/2;

 x1=innerRad * cos(thetaVecInner);
 y1 = innerRad * sin(thetaVecInner);
 x2=outerRad * cos(thetaVecOuter);
 y2 = outerRad * sin(thetaVecOuter);

 xMat = [x1;x2];
 yMat = [y1;y2];
 x=[xMat(:);x1(1)];
 y=[yMat(:);y1(1)];

  end


