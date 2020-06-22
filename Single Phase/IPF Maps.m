% IPF-Z
%%%%%%%%%
figure;
%create the ipf sector/shape and color it
oM = ipfHSVKey(ebsd('Ni-superalloy'));
%define the direction of the ipf
oM.inversePoleFigureDirection = zvector;
%convert the ebsd map orientations to a color based on the IPF
color = oM.orientation2color(ebsd('Ni-superalloy').orientations);
hold on;
plot(ebsd('Ni-superalloy'),color);
hold off;
set(gcf,'Name','EBSD map: IPF-Z','NumberTitle','off');



% IPF-X
%%%%%%%%
figure;
%create the ipf sector/shape and color it
oM = ipfHSVKey(ebsd('Ni-superalloy'));
%define the direction of the ipf
oM.inversePoleFigureDirection = xvector;
%convert the ebsd map orientations to a color based on the IPF
color = oM.orientation2color(ebsd('Ni-superalloy').orientations);
hold on;
plot(ebsd('Ni-superalloy'),color);
hold off;
set(gcf,'Name','EBSD map: IPF-X','NumberTitle','off');


% IPF-Y
%%%%%%%%
%create the ipf sector/shape and color it
oM = ipfHSVKey(ebsd('Ni-superalloy'));
%define the direction of the ipf
oM.inversePoleFigureDirection = yvector;
%convert the ebsd map orientations to a color based on the IPF
color = oM.orientation2color(ebsd('Ni-superalloy').orientations);
hold on;
plot(ebsd('Ni-superalloy'),color);
hold off;
set(gcf,'Name','EBSD map: IPF-Y','NumberTitle','off');
