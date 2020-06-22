% Plotting Phase Map
%%%%%%%%%%%%%%%%%%%%
figure;
%prepare to plot an EBSD map
plot(ebsd('Ni-superalloy'));
set(gcf,'Name','EBSD map: Phase','NumberTitle','off');



% Plot Band Contrast Map
%%%%%%%%%%%%%%%%%%%%%%%%
%convert the colour index to greyscale
color=ind2rgb(ebsd('Ni-superalloy').bc,gray(255));
color=squeeze(color);
hold on;
plot(ebsd('Ni-superalloy'),color);
hold off;
%prepare to plot an EBSD map
%map plots on top of current figure
%convert the colour index to greyscale
color=ind2rgb(ebsd('Ni-superalloy').bc,gray(255));
color=squeeze(color);
hold on;
plot(ebsd('Ni-superalloy'),color);
hold off;
set(gcf,'Name','EBSD map: Band Contrast','NumberTitle','off');
