figure;
%create a coloured orientation map
oM = BungeColorKey(ebsd('Ni-superalloy').CS);
%Get orientation colours from oM
color = oM.orientation2color(ebsd('Ni-superalloy').orientations);
hold on;
plot(ebsd('Ni-superalloy'),color);
hold off;
%prepare to plot an EBSD map
%map plots on top of current figure
%create a coloured orientation map
oM = BungeColorKey(ebsd('Ni-superalloy').CS);
%Get orientation colours from oM
color = oM.orientation2color(ebsd('Ni-superalloy').orientations);
hold on;
plot(ebsd('Ni-superalloy'),color);
hold off;
set(gcf,'Name','EBSD map: Euler','NumberTitle','off');
