function intersectionPt = calcLineIntersect(p1,p2,a1,a2)

  A1 = p2(2)-p1(2);
  B1 = p1(1)-p2(1);
  C1 = A1 * p1(1)+ B1 * p1(2);

  A2 = a2(2)-a1(2);
  B2 = a1(1)-a2(1);
  C2 = A2 * a1(1)+ B2 * a1(2);

  det = A1 * B2 - A2 * B1;

  if (det == 0)
## Lines are parallel
    error("Lines are parallel");
  else
    x = (B2 * C1 - B1 * C2) / det
    y = (A1 * C2 - A2 * C1) / det
  end
intersectionPt=[x;y];

end
