function plot_custom(~)
ax = gca;
% Limiting the axis around the 
ylim([0,90])
xlim([0,90])
% Changing the Axis Property Line-width, Font and Font-Face
ax.LineWidth = 5
ax.FontWeight='bold';
ax.FontSize = 30
ax.YLabel.FontSize = 25;
ax.XTick=[0,30,60,90];
ax.YTick=[0,30,60,90];
%% Changing the Label of Plots Like Phi1, Phi etc
% for ODF
xlabel('\boldmath$\varphi_1$') % bold phi1
ylabel('\boldmath$\Phi$') % bold phi
ax.XLabel.FontSize = 35;
ax.YLabel.FontSize = 35;
end

%%%%%%%%%%%%%%%%%%%%%%%%%% ******* Increase font size of Pole figures **************%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Increase the multiplication factor
%%%%%% Path D:\Programs\Matlab\MTEX\mtex-5.5.2\compatibility\mtexTitle.m 
%%% Go to line 32
%%% Change multiplication factor 1.1 to 2
%%%   if check_option(varargin,'global') && ~verLessThan('matlab','9.5')
%%%     h = optiondraw(sgtitle(s,...
%%%       'interpreter','LaTeX','FontSize',round(getMTEXpref('FontSize')*2)),varargin{:});  
%%%   else
%%%     h = optiondraw(title(ax,s,...
%%%       'interpreter','LaTeX','FontSize',round(getMTEXpref('FontSize')*2)),varargin{:});





%%%%%%%%%%%%%%%%%%%%%%%%%% *******Orientation distribution Function **************%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Place in the root directory of mtex and edit the plot.m from  --> mtex-5.3(root folder)\plotting\ODFSections\@ODFSections\plot.m
% 
% At mostly line 125; below 
% ........................
% .......................
% % the plotting grid
%     if iscell(oS.plotGrid)
%       secS2Grid = oS.plotGrid{s};
%     else
%       secS2Grid = oS.plotGrid;
%     end
%     
%     plotSection(oS,mtexFig.gca,s,secS2Grid,secData,'pcolor',varargin{:});
%     plot_custom
% end
% ..................
% .............................
%%%%%%%%%% Change Font of degree of Phi2 section %%%%%%%%%%
% go to C:\Users\mjay\Documents\MATLAB\mtex-5.7.0\plotting\sphericalPlot.m
% Line No. 136 
% Increase font to 40-50


%%%%%%%%%%%%%%%%%%%%%%%%%% ******* Inverse Pole figures **************%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % FOR Increasing the font size of IPF triangle
% % go to ~\mtex-5.5.2\geometry\@vector3d\scatter.m
% % line no. 236
% % ......
% % ......
% %     text(v,get_option(varargin,{'text','label'}),'parent',sP(i).ax,...  
% %       'addMarkerSpacing',varargin{:},'doNotDraw','FontSize',28);    %% (, 'FontWeight', 'bold')
% %     localResizeScatterCallback([],[],sP(i).ax);
% %     
% % ......
% % ......
% % 
% % Add ",'FontSize',28"
% % 
% % save and exit


%%% Remove X, Y or Z
%%%%%% Path D:\Programs\Matlab\MTEX\mtex-5.5.2\ODFAnalysis\@ODF\plotIPDF.m

% % % % Comment the Line 47
% % % %     mtexTitle(cax(1),char(r(i),'LaTeX'));


