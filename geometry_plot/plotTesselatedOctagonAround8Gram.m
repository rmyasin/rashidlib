function plotTesselatedOctagonAround8Gram(centerx,centery,nGramRad,octagonLineSpec,nGramLineSpec)

outerRad = nGramRad;
innerRad = outerRad*sqrt(2-sqrt(2));

% ## UNCLEAR DERIVATION OF THIS RELATIONSHIP, BUT IT LOOKS TO HOLD
e = outerRad*(sqrt(2)-1);
% ## Known ratio between regular octagon edge and circumscribed radius
octagonRad = e/2*sqrt(4+2*sqrt(2));

for ii=1:8
x=cos(ii*pi/4-pi/8)*(innerRad+octagonRad);
y=sin(ii*pi/4-pi/8)*(innerRad+octagonRad);
r=octagonRad;
plotCircle(x+centerx,y+centery,r,8,ii*pi/4-pi/8+pi,octagonLineSpec)
hold on
end

plotNGram(centerx,centery,outerRad,innerRad,8,nGramLineSpec);
