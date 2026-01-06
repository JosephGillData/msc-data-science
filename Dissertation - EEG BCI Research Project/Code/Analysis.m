%% Table to array
A1 = table2array(A160108_table);
B1 = table2array(B151019_table);
B2 = table2array(B151020_table);
B3 = table2array(B151215_table);
C1 = table2array(C151126_table);
C2 = table2array(C151216_table);
C3 = table2array(C151223_table);
D1 = table2array(D151125_table);
E1 = table2array(E151225_table);
E2 = table2array(E160119_table);
E3 = table2array(E160122_table);
F1 = table2array(F150916_table);
F2 = table2array(F150917_table);
F3 = table2array(F150928_table);
%% Data for plots
tick_labels = ['Logistic Regression', 'Decision Tree', 'Ensemble Method', 'SVM', 'KNN'];
stacked_arrays = cat(3,A1,B1,B2,B3,C1,C2,C3,D1,E1,E2,E3,F1,F2,F3);
meaned = mean(stacked_arrays,3);
four_mean = meaned(:,1:8);
poly_mean = meaned(:,9:17);
sin_mean = meaned(:,18:23);
varm_mean = meaned(:,24:25);
%% mean feature extraction performance
overall_mean_poly = mean(mean(poly_mean));
overall_mean_four = mean(mean(four_mean));
overall_mean_sin = mean(mean(sin_mean));
overall_mean_varm = mean(mean(varm_mean));
%% Colours
c = distinguishable_colors(9);
h = c(1:9,:);
disp(h)
four_mean(:,1)
%% Fourier plot
hold on
set(gca, 'YGrid', 'on', 'XGrid', 'off')

plot(four_mean(:,1),'-o','MarkerSize',4,'MarkerFaceColor',[0 0 1],'LineWidth',1, 'color',[0 0 1])
plot(four_mean(:,2),'-o','MarkerSize',4,'MarkerFaceColor',[1 0 0],'LineWidth',1, 'color',[1 0 0])
plot(four_mean(:,3),'-o','MarkerSize',4,'MarkerFaceColor',[0 1 0],'LineWidth',1, 'color',[0 1 0])
plot(four_mean(:,4),'-o','MarkerSize',4,'MarkerFaceColor',[0 0 0.17],'LineWidth',1, 'color',[0 0 0.17])
plot(four_mean(:,5),'-o','MarkerSize',4,'MarkerFaceColor',[1 0.1 0.7],'LineWidth',1, 'color',[1 0.1 0.7])
plot(four_mean(:,6),'-o','MarkerSize',4,'MarkerFaceColor',[1 0.82 0],'LineWidth',1, 'color',[1 0.82 0])
plot(four_mean(:,7),'-o','MarkerSize',4,'MarkerFaceColor',[0 0.34 0],'LineWidth',1, 'color',[0 0.34 0])
plot(four_mean(:,8),'-o','MarkerSize',4,'MarkerFaceColor',[0.51 0.51 1],'LineWidth',1, 'color',[0.51 0.51 1])
% plot(four_mean,'LineWidth',1)
fig=gcf;
fig.Position(3:4)=[700,500];

xlabel('Classification Method','FontSize',20)
ylabel('Classification Accuracy','FontSize',20)
lgd = legend('1','2','3','4','5','6','7','8','FontSize',16);
title(lgd,'Degree')
xticks([1 2 3 4 5])
xticklabels({'Logistic Regression', 'Decision Tree', 'Ensemble Method', 'SVM', 'KNN'})
hold off
%% Polynomial plot
hold on 
set(gca, 'YGrid', 'on', 'XGrid', 'off')
plot(poly_mean(:,1),'-o','MarkerSize',4,'MarkerFaceColor',[0 0 1],'LineWidth',1, 'color',[0 0 1])
plot(poly_mean(:,2),'-o','MarkerSize',4,'MarkerFaceColor',[1 0 0],'LineWidth',1, 'color',[1 0 0])
plot(poly_mean(:,3),'-o','MarkerSize',4,'MarkerFaceColor',[0 1 0],'LineWidth',1, 'color',[0 1 0])
plot(poly_mean(:,4),'-o','MarkerSize',4,'MarkerFaceColor',[0 0 0.17],'LineWidth',1, 'color',[0 0 0.17])
plot(poly_mean(:,5),'-o','MarkerSize',4,'MarkerFaceColor',[1 0.1 0.7],'LineWidth',1, 'color',[1 0.1 0.7])
plot(poly_mean(:,6),'-o','MarkerSize',4,'MarkerFaceColor',[1 0.82 0],'LineWidth',1, 'color',[1 0.82 0])
plot(poly_mean(:,7),'-o','MarkerSize',4,'MarkerFaceColor',[0 0.34 0],'LineWidth',1, 'color',[0 0.34 0])
plot(poly_mean(:,8),'-o','MarkerSize',4,'MarkerFaceColor',[0.51 0.51 1],'LineWidth',1, 'color',[0.51 0.51 1])
plot(poly_mean(:,9),'-o','MarkerSize',4,'MarkerFaceColor',[0.62 0.31 0.27],'LineWidth',1, 'color',[0.62 0.31 0.27])

fig=gcf;
fig.Position(3:4)=[700,500];

xlabel('Classification Method','FontSize',20)
ylabel('Classification Accuracy','FontSize',20)
lgd = legend('1','2','3','4','5','6','7','8','9','FontSize',16);
title(lgd,'Degree')

xticks([1 2 3 4 5])
xticklabels({'Logistic Regression', 'Decision Tree', 'Ensemble Method', 'SVM', 'KNN'})
hold off
%% Sinusoidal plot
hold on 
set(gca, 'YGrid', 'on', 'XGrid', 'off')
plot(sin_mean(:,1),'-o','MarkerSize',4,'MarkerFaceColor',[0 0 1],'LineWidth',1, 'color',[0 0 1])
plot(sin_mean(:,2),'-o','MarkerSize',4,'MarkerFaceColor',[1 0 0],'LineWidth',1, 'color',[1 0 0])
plot(sin_mean(:,3),'-o','MarkerSize',4,'MarkerFaceColor',[0 1 0],'LineWidth',1, 'color',[0 1 0])
plot(sin_mean(:,4),'-o','MarkerSize',4,'MarkerFaceColor',[0 0 0.17],'LineWidth',1, 'color',[0 0 0.17])
plot(sin_mean(:,5),'-o','MarkerSize',4,'MarkerFaceColor',[1 0.1 0.7],'LineWidth',1, 'color',[1 0.1 0.7])
plot(sin_mean(:,6),'-o','MarkerSize',4,'MarkerFaceColor',[1 0.82 0],'LineWidth',1, 'color',[1 0.82 0])

fig=gcf;
fig.Position(3:4)=[700,500];

xlabel('Classification Method','FontSize',20)
ylabel('Classification Accuracy','FontSize',20)
lgd = legend('1','2','3','4','5','6','7','8','9','FontSize',16);
title(lgd,'Degree')

xticks([1 2 3 4 5])
xticklabels({'Logistic Regression', 'Decision Tree', 'Ensemble Method', 'SVM', 'KNN'})
hold off
%% Varm plot
hold on 
set(gca, 'YGrid', 'on', 'XGrid', 'off')
plot(varm_mean(:,1),'-o','MarkerSize',4,'MarkerFaceColor',[0 0 1],'LineWidth',1, 'color',[0 0 1])
plot(varm_mean(:,2),'-o','MarkerSize',4,'MarkerFaceColor',[1 0 0],'LineWidth',1, 'color',[1 0 0])

fig=gcf;
fig.Position(3:4)=[700,500];

xlabel('Classification Method','FontSize',20)
ylabel('Classification Accuracy','FontSize',20)
lgd = legend('1','2','3','4','5','6','7','8','9','FontSize',16);
title(lgd,'Number of Lags')

xticks([1 2 3 4 5])
xticklabels({'Logistic Regression', 'Decision Tree', 'Ensemble Method', 'SVM', 'KNN'})
hold off
%%
hold on 
set(gca, 'YGrid', 'on', 'XGrid', 'off')
plot(poly_mean(:,9),'-o','MarkerSize',4,'MarkerFaceColor',[0 0 1],'LineWidth',1, 'color',[0 0 1])
plot(four_mean(:,1),'-o','MarkerSize',4,'MarkerFaceColor',[1 0 0],'LineWidth',1, 'color',[1 0 0])
plot(sin_mean(:,1),'-o','MarkerSize',4,'MarkerFaceColor',[0 1 0],'LineWidth',1, 'color',[0 1 0])
plot(varm_mean(:,2),'-o','MarkerSize',4,'MarkerFaceColor',[0 0 0.17],'LineWidth',1, 'color',[0 0 0.17])


fig=gcf;
fig.Position(3:4)=[700,500];

xlabel('Classification Method','FontSize',20)
ylabel('Classification Accuracy','FontSize',20)
lgd = legend('Polynomial (9)','Fourier (1)','Sum of sin (1)','VARM (2)','FontSize',10,'Position',[0.22 0.5 1 0.2],'FontSize',16);
title(lgd,'Feature extraction method')
ylim([0.5 0.9])
xticks([1 2 3 4 5])
xticklabels({'Logistic Regression', 'Decision Tree', 'Ensemble Method', 'SVM', 'KNN'})
hold off
%%
poly_mean(:,9)




