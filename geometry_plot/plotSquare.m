% ## Inputs:
% ## X: bottom left corner
% ## Y: bottom left corner
% ## width: square width
function plotSquare(x,y,width)
    x=[x,x,x+width,x+width,x];
    y=[y,y+width,y+width,y,y];

    plot(x,y)

  end
