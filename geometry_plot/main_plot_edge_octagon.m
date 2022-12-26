
radius=5
gridHeight=3;
gridWidth=5;

## Angle between horizonal and first vertex of a regular octagon
offset=pi/8;

## Edge spacing - side radius is edge radius * cos(pi/8),
## doubled for center-to-center distance
spacing = radius*cos(pi/8)*2

for ii = 1:gridHeight
  for jj=1:gridWidth
    plotCircle(jj*spacing-spacing/2,ii*spacing-spacing/2,radius,8,offset);
    hold on
  endfor
endfor


