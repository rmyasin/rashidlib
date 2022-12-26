  function out = rot2D(r,theta)
  H = [cos(theta) -sin(theta)
       sin(theta)  cos(theta)];
  out = H*r;

  end
