Point(1) = {0, 0, 0, 1};
Point(2) = {0.5, 0, 0, 1};
Point(3) = {-0.5, 0, 0, 1};
Point(4) = {0, 0.5, 0, 1};
Point(5) = {0, -0.5, 0, 1};
Point(6) = {-10, 5, 0, 1};
Point(7) = {10, 5, 0, 1};
Point(8) = {-10, -5, 0, 1};
Point(9) = {10, -5, 0, 1};
Circle(1) = {2, 1, 4};
Circle(2) = {4, 1, 3};
Circle(3) = {3, 1, 5};
Circle(4) = {5, 1, 2};
Line(5) = {6, 8};
Line(6) = {8, 9};
Line(7) = {9, 7};
Line(8) = {7, 6};
Line Loop(11) = {6, 7, 8, 5, -2, -1, -4, -3};
Plane Surface(11) = {11};
Extrude {0, 0, 1} {
    Surface{11};
    Layers{1};
    Recombine;
}
Physical Surface("inlet") = {36};
Physical Surface("outlet") = {28};
Physical Surface("cylinder") = {52, 40, 44, 48};
Physical Surface("bottom") = {24};
Physical Surface("top") = {32};
Physical Surface("frontAndBack") = {53, 11};
Physical Volume("internal") = {1};