cla
centerx = 0;
centery = 0;
outerRad = 4;
innerRad = outerRad*sqrt(2-sqrt(2));
moveSize = (outerRad + e + e*cos(pi/4))*2;


plotTesselatedOctagonAround8Gram(centerx,centery,outerRad,'b','k')
hold on
plotTesselatedOctagonAround8Gram(centerx+moveSize,centery,outerRad,'b','k')
plotTesselatedOctagonAround8Gram(centerx+moveSize,centery,outerRad,'b','k')
plotTesselatedOctagonAround8Gram(centerx,centery+moveSize,outerRad,'b','k')
plotTesselatedOctagonAround8Gram(centerx+moveSize,centery+moveSize,outerRad,'b','k')


