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



%% Changing the Label of Plots Like Phi1, Phi etc
% for ODF
xlabel('\boldmath$\varphi_1$') % bold phi1
ylabel('\boldmath$\Phi$') % bold phi
ax.XLabel.FontSize = 35;
ax.YLabel.FontSize = 35;
end
