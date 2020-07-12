FileList = dir('*.txt');
N = size(FileList,1);

for k = 1:N

filename = FileList(k).name
misorientation_data = readmatrix(filename);
misorientation_data = misorientation_data(:,~all(isnan(misorientation_data)));
misorientation_data = misorientation_data([find(all(~isnan(misorientation_data), 2))],:);

Distance = misorientation_data(:,1);
Point_to_point = misorientation_data(:,2);
Point_to_origin = misorientation_data(:,3);
% % Plotting Graph
% plot them
plt = Plot(Distance, Point_to_point, Distance, Point_to_origin);
%% change settings of PLOT
% &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
plt = Plot(); % create a Plot object and grab the current figure          &
plt.XLabel = 'Distance, \mum'; % xlabel                                           &
plt.YLabel = 'Misorientation, Degree'; %ylabel                                            &
% plt.Title = 'Average number of activity system per grain vs True Strain'; % plot title                    &
% Save? comment the following line if you do not want to save             &
% plt.export('Stress-strain.svg');                                        &
% plt.Colors = {[0, 0, 0]};   % [red, green, blue]                        &
plt.LineWidth = 2;        % line width                                    &
plt.LineStyle = {'-'};   % line style: '-', ':', '--' etc                 &
% plt.Markers = {'o','s'};                                             %
% change scale, axis limit, tick and grid:                                &
% plt.YScale = 'log';     % 'linear' or 'log'                             &
% plt.YLim = [6, 8]; % [min, max]                                       &
% plt.XLim = [0, 0.6]; % [min, max]                                    &
% plt.YTick = [1E-3, 1E-1, 1E1, 1E3]; %[tick1, tick2, .. ]                &
% plt.YGrid = 'on';       % 'on' or 'off'                                 &
% plt.Legend = {'Point-to-point', 'Point-to-origin'}; % legends
if k == N
    plt.Legend = {'Point-to-point', 'Point-to-origin'}; % legends
end

plt.LegendLoc = 'best';
% &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
filename = erase(filename,'.txt')
saveas(gcf,[filename '.svg'])
end


% # Header: Project1::Project 1 Specimen 1 Site 5 Map Data 6::9::New Misorientation Profile Chart   3/31/2020
%# 
%Chart:  Misorientation Profile
%
%Column 1: Distance [microns]
%Column 2: Point-to-point Misorientation [degrees
%Column 3: Point-to-origin Misorientation [degrees]
%0; 0; 0; 
%0.5; 3.29349; 3.29349; 
%1; 4.03585; 3.51123; 
%1.58114; 0.568551; 3.69311; 
%2.06155; 2.87372; 5.95503; 
%2.54951; 2.29576; 7.64432; 
%3.04138; 3.21016; 9.70081; 
%3.53553; 2.29081; 11.0928; 
%3.64005; 1.83568; 11.2774; 
%4.12311; 0.566482; 11.7862; 
%4.60977; 1.14055; 11.5275; 
%5.09902; 1.39381; 11.5561; 
%5.59017; 1.62317; 11.9931; 
%6.18466; 1.8045; 12.973; 
%6.67083; 1.14466; 13.2738; 
%7.15891; 2.26572; 13.3501; 
%7.64853; 1.26114; 13.6397; 
%8.13941; 0.561626; 13.2667; 
%8.73212; 0.612936; 12.8841; 
%9.21954; 0.731149; 12.1976; 
%9.70824; 1.14432; 11.2037; 
%10.198; 0.824245; 10.4185; 
%10.6888; 1.482; 8.96616; 
%11.2805; 2.80505; 6.40781; 
%11.7686; 1.28268; 5.64743; 
%12.2577; 1.51955; 4.25818; 
%12.7475; 16.0768; 12.4969; 
%13.3417; 3.41501; 15.3666; 
%13.8293; 1.5925; 14.0176; 
%14.3178; 2.84538; 11.8138; 
%14.8071; 2.82217; 9.03948; 
%15.2971; 0.732753; 8.39138; 
%15.8902; 0.972772; 8.21506; 
%16.3783; 1.38423; 7.192; 
%16.8671; 0.528601; 6.89938; 
%17.3566; 0.199792; 7.02733; 
%17.8466; 0.910857; 7.14235; 
%18.4391; 1.54383; 8.6762; 
%18.9275; 0.717643; 9.18337; 
%19.4165; 0.843951; 9.65518; 
%19.906; 1.53595; 11.0785; 
%20.3961; 2.00779; 13.0772; 
%20.5; 1.32854; 14.1806; 
%20.9881; 1.58832; 15.2052; 
%21.4767; 2.11155; 17.0278; 
%21.9659; 1.20658; 17.4069; 
%22.4555; 0.800642; 17.8397; 
%23.0489; 3.0266; 20.5617; 
%23.5372; 3.83737; 22.3809; 
%24.026; 3.08388; 24.3374; 
% ;  ;  ; 
%Average;  ;  ; 
%Number; 1.99349; 11.219; 


%% Chart:  Misorientation Profile
% Column 1: Distance [microns]
% Column 2: Point-to-point Misorientation [degrees]
% Column 3: Point-to-origin Misorientation [degrees]

