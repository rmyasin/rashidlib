
radius=5
gridHeight=5;
gridWidth=7;
N=6;

## Angle between horizonal and first vertex of a regular hexagon
offset=0; % pi/6 for edges on the horizontal

## Vertex spacing is the vertex radius (doubled to center)
xspacing = radius*2

## Edge spacing - side radius is edge radius * cos(pi/6),
## doubled for center-to-center distance
yspacing = radius*cos(pi/6)*2

cla

for ii = 1:gridHeight
  for jj=1:gridWidth
    plotCircle(jj*xspacing-xspacing/2,ii*yspacing-yspacing/2,radius,N,offset);
    hold on
    plotCircle(jj*xspacing-xspacing/2,ii*yspacing-yspacing/2,radius,N,pi/6);
  endfor
endfor

axis equal

offset=pi/6;
for ii = 1:gridHeight
  for jj=1:gridWidth
    plotCircle(jj*yspacing-yspacing/2,-ii*xspacing+xspacing/2,radius,N,offset);
    hold on
  endfor
endfor

offset=0;
for ii = 1:gridHeight
  for jj=1:gridWidth
    plotCircle(jj*yspacing-yspacing/2,-ii*xspacing+xspacing/2,radius,N,offset);
    hold on
  endfor
endfor

