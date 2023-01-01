length = 25;
width = 15;
borderSize = 2;
b=borderSize; % naming convention to simplify equation writing

% ## Define outer borders
xOuterBorder = [0 length length 0 0];
yOuterBorder = [0 0 width width 0];

xInnerBorder = [borderSize length-borderSize length-borderSize borderSize borderSize];
yInnerBorder = [borderSize borderSize width-borderSize width-borderSize borderSize];

% ## Plot Outer border
cla
plot(xOuterBorder,yOuterBorder)
hold on
plot(xInnerBorder,yInnerBorder)
axis equal

% ######
% ## Find center of horizontal snake pattern
nSegHorz = 4;

sLen = (length - 2*b - b - (nSegHorz-1)*b) / nSegHorz;

xStart = 0;
% ## Start with an half start then an x
xSpacing = [0;b/2;b; repmat([sLen;b],nSegHorz,1);b/2];
xCenter = cumsum(xSpacing);

% ## Snake Down Horizontal
if mod(nSegHorz,2) % if odd
  yCenter = [b/2;repmat([0;b;b;0],(nSegHorz+1)/2,1);b/2];
else % if even
  yCenter = [b/2;repmat([0;b;b;0],(nSegHorz)/2,1);0;b;b/2]
end

plot(xCenter,yCenter); % Plot bottom
plot(xCenter,yCenter+width-borderSize); % Plot top

% ## Snake Up Horizontal
if mod(nSegHorz,2) % if odd
  yCenter = [b/2;repmat([b;0;0;b],(nSegHorz+1)/2,1);b/2];
else % if even
  yCenter = [b/2;repmat([b;0;0;b],(nSegHorz)/2,1);b;0;b/2]
end

plot(xCenter,yCenter); % Plot bottom
plot(xCenter,yCenter+width-borderSize); % Plot top

% ######
% ## Find Center of Vertical Snake Pattern
nSegVert = 2;

sLen = (width - 2*b - b - (nSegVert-1)*b) / nSegVert;

yStart = 0;
% ## Start with an half start then an x
ySpacing = [0;b/2;b; repmat([sLen;b],nSegVert,1);b/2];
yCenter = cumsum(ySpacing);

% ## Snake Down Vertical
if mod(nSegVert,2) % if odd
  xCenter = [b/2;repmat([0;b;b;0],(nSegVert+1)/2,1);b/2];
else % if even
  xCenter = [b/2;repmat([0;b;b;0],(nSegVert)/2,1);0;b;b/2]
end

plot(xCenter,yCenter); % Plot left
plot(xCenter+length-borderSize,yCenter); % Plot right

% ## Snake Up Vertical
if mod(nSegVert,2) % if odd
  xCenter = [b/2;repmat([b;0;0;b],(nSegVert+1)/2,1);b/2];
else % if even
  xCenter = [b/2;repmat([b;0;0;b],(nSegVert)/2,1);b;0;b/2]
end

plot(xCenter,yCenter); % Plot left
plot(xCenter+length-borderSize,yCenter); % Plot right

