function p = protate ( p, phi )

%*****************************************************************************80
%
%% PROTATE rotates a set of points by a given angle.
%
%  Licensing:
%
%    (C) 2004 Per-Olof Persson. 
%    See COPYRIGHT.TXT for details.
%
%  Modified:
%
%    16 December 2020
%
%  Reference:
%
%    Per-Olof Persson and Gilbert Strang,
%    A Simple Mesh Generator in MATLAB,
%    SIAM Review,
%    Volume 46, Number 2, June 2004, pages 329-345.
%
%  Input:
%
%    real P(NP,2), a set of points to be rotated.
%
%    real PHI, the rotation angle, in radians.
%
%  Output:
%
%    real P(NP,2), the rotated points.
%

%
%  Compute the rotation matrix.
%
  A = [ cos(phi), -sin(phi); ...
        sin(phi),  cos(phi) ];
%
%  Multiply the points by the rotation matrix.
%
  p = p * A;

  return
end
