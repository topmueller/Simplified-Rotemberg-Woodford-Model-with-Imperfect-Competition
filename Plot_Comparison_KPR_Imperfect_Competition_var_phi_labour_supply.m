clear

load KPR_irfs



%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Preference Shock
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%Plotting the IRFS
figure(1);
%looping over all variables
for jj=1:1:length(var_names)
subplot(5,3,jj);
plot(1:50, KPR_irfs.eta_zeta.gamma_1_0_cons_mu.([var_names{jj} '_eta_zeta'])(1:50), 'b', 'linewidth', 2); hold on;
plot(1:50, KPR_irfs.eta_zeta.gamma_1_2_cons_mu.([var_names{jj} '_eta_zeta'])(1:50), 'r--', 'linewidth', 2); 
plot(1:50, KPR_irfs.eta_zeta.gamma_1_2_cons_mu_epsilon_HW_inf.([var_names{jj} '_eta_zeta'])(1:50), 'g-.', 'linewidth', 2); 
plot(1:50, KPR_irfs.eta_zeta.gamma_2_0_cons_mu_epsilon_HW_inf.([var_names{jj} '_eta_zeta'])(1:50),  '--',  'Color', [0.9290 0.6940 0.1250], 'linewidth', 2);
zero_plot(1) = plot(1:50,zeros(1,50));
set(zero_plot(1),'LineWidth', 1, 'LineStyle', ':',  'Marker', 'none', 'Color', 'k');
xlabel('time');
ylabel('% deviations from S.S.');
if jj==length(var_names)
legend('Perfect Comp. \epsilon_{HW} = 4','Imperfect Comp. \gamma = 1.2, \epsilon_{HW} = 4', 'Imperfect Comp. \gamma = 1.2, \epsilon_{HW} = \infty' , 'Imperfect Comp. \gamma = 2,   \epsilon_{HW} = \infty' ,'fontSize',10);
end

title([var_names_long{jj} ' (' var_names{jj} ')']); 
sgtitle('IRFs to a Preference Shock', 'fontSize',14);

end


%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Government Spending Shock
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%Plotting the IRFS
figure(2);
%looping over all variables
for jj=1:1:length(var_names)
subplot(5,3,jj);
plot(1:50, KPR_irfs.eta_g.gamma_1_0_cons_mu.([var_names{jj} '_eta_g'])(1:50), 'b', 'linewidth', 2); hold on;
plot(1:50, KPR_irfs.eta_g.gamma_1_2_cons_mu.([var_names{jj} '_eta_g'])(1:50), 'r--', 'linewidth', 2); 
plot(1:50, KPR_irfs.eta_g.gamma_1_2_cons_mu_epsilon_HW_inf.([var_names{jj} '_eta_g'])(1:50), 'g-.', 'linewidth', 2); 
plot(1:50, KPR_irfs.eta_g.gamma_2_0_cons_mu_epsilon_HW_inf.([var_names{jj} '_eta_g'])(1:50),  '--',  'Color', [0.9290 0.6940 0.1250], 'linewidth', 2);
zero_plot(1) = plot(1:50,zeros(1,50));
set(zero_plot(1),'LineWidth', 1, 'LineStyle', ':',  'Marker', 'none', 'Color', 'k');
xlabel('time');
ylabel('% deviations from S.S.');
if jj==length(var_names)
legend('Perfect Comp. \epsilon_{HW} = 4','Imperfect Comp. \gamma = 1.2, \epsilon_{HW} = 4', 'Imperfect Comp. \gamma = 1.2, \epsilon_{HW} = \infty' , 'Imperfect Comp. \gamma = 2,   \epsilon_{HW} = \infty' ,'fontSize',10);
end

title([var_names_long{jj} ' (' var_names{jj} ')']); 
sgtitle('IRFs to a Government Spending Shock', 'fontSize',14);

end


%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Technology Shock
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%Plotting the IRFS
figure(3);
%looping over all variables
for jj=1:1:length(var_names)
subplot(5,3,jj);
plot(1:50, KPR_irfs.eta_z.gamma_1_0_cons_mu.([var_names{jj} '_eta_z'])(1:50), 'b', 'linewidth', 2); hold on;
plot(1:50, KPR_irfs.eta_z.gamma_1_2_cons_mu.([var_names{jj} '_eta_z'])(1:50), 'r--', 'linewidth', 2); 
plot(1:50, KPR_irfs.eta_z.gamma_1_2_cons_mu_epsilon_HW_inf.([var_names{jj} '_eta_z'])(1:50), 'g-.', 'linewidth', 2); 
plot(1:50, KPR_irfs.eta_z.gamma_2_0_cons_mu_epsilon_HW_inf.([var_names{jj} '_eta_z'])(1:50),  '--',  'Color', [0.9290 0.6940 0.1250], 'linewidth', 2);
zero_plot(1) = plot(1:50,zeros(1,50));
set(zero_plot(1),'LineWidth', 1, 'LineStyle', ':',  'Marker', 'none', 'Color', 'k');
xlabel('time');
ylabel('% deviations from S.S.');
if jj==length(var_names)
legend('Perfect Comp. \epsilon_{HW} = 4','Imperfect Comp. \gamma = 1.2, \epsilon_{HW} = 4', 'Imperfect Comp. \gamma = 1.2, \epsilon_{HW} = \infty' , 'Imperfect Comp. \gamma = 2,   \epsilon_{HW} = \infty' ,'fontSize',10);
end


title([var_names_long{jj} ' (' var_names{jj} ')']); 
sgtitle('IRFs to a Technology Shock', 'fontSize',14);

end

