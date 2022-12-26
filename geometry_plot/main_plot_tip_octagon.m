
radius=5
gridHeight=3;
gridWidth=5;

for ii = 1:gridHeight
  for jj=1:gridWidth
    plotCircle(jj*radius*2-radius,ii*radius*2-radius,radius,8);
    hold on
  endfor
endfor


