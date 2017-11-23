A = 0.5;
B = 1;
C = 2.5;
E = 9.8696;
F = 1;
G = 2;
X0 = (3/2);
Y0 = 1;

[X,Y] = meshgrid(-10:1:10,-10:1:10);
Z = sin(pi.*X)+Y.^2-Y+X.*Y;
Z2 = A+(X-X0).*B+(Y-Y0).*C+(((X-X0).^2)./2).*E+(Y-Y0).*(X-X0).*F+(((Y-Y0).^2)./2).*G;
surf(X,Y,Z)
hold on;
surf(X,Y,Z2)
plot3(X0, Y0, 400, '.', 'MarkerSize',20)
plot3(1.5267, -0.2633, 400, '.', 'MarkerSize',20)

az = 25;
el = 45;
view(az, el);



