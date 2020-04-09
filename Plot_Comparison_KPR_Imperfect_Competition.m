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
plot(1:50, KPR_irfs.eta_zeta.gamma_1_4_cons_mu.([var_names{jj} '_eta_zeta'])(1:50), 'g--', 'linewidth', 2); 
zero_plot(1) = plot(1:50,zeros(1,50));
set(zero_plot(1),'LineWidth', 1, 'LineStyle', ':',  'Marker', 'none', 'Color', 'k');
xlabel('time');
ylabel('% deviations from S.S.');
if jj==1
legend('Perfect Comp. \gamma = 1','Imperfect Comp. \gamma = 1.2', 'Imperfect Comp. \gamma = 1.4' ,'fontSize',10);
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
plot(1:50, KPR_irfs.eta_g.gamma_1_4_cons_mu.([var_names{jj} '_eta_g'])(1:50), 'g--', 'linewidth', 2); 
zero_plot(1) = plot(1:50,zeros(1,50));
set(zero_plot(1),'LineWidth', 1, 'LineStyle', ':',  'Marker', 'none', 'Color', 'k');
xlabel('time');
ylabel('% deviations from S.S.');
if jj==1
legend('Perfect Comp. \gamma = 1','Imperfect Comp. \gamma = 1.2', 'Imperfect Comp. \gamma = 1.4' ,'fontSize',10);
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
plot(1:50, KPR_irfs.eta_z.gamma_1_4_cons_mu.([var_names{jj} '_eta_z'])(1:50), 'g--', 'linewidth', 2); 
zero_plot(1) = plot(1:50,zeros(1,50));
set(zero_plot(1),'LineWidth', 1, 'LineStyle', ':',  'Marker', 'none', 'Color', 'k');
xlabel('time');
ylabel('% deviations from S.S.');
if jj==1
legend('Perfect Comp. \gamma = 1','Imperfect Comp. \gamma = 1.2', 'Imperfect Comp. \gamma = 1.4' ,'fontSize',10);
end

title([var_names_long{jj} ' (' var_names{jj} ')']); 
sgtitle('IRFs to a Technology Shock', 'fontSize',14);

end


%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Markup Shock
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%Plotting the IRFS
figure(4);
%looping over all variables
for jj=1:1:length(var_names)
subplot(5,3,jj);
plot(1:50, KPR_irfs.eta_mu.gamma_1_2_shock_rho_0_9.([var_names{jj} '_eta_mu'])(1:50), 'b', 'linewidth', 2); hold on;
plot(1:50, KPR_irfs.eta_mu.gamma_1_2_shock_rho_0_0.([var_names{jj} '_eta_mu'])(1:50), 'r--', 'linewidth', 2); 
zero_plot(1) = plot(1:50,zeros(1,50));
set(zero_plot(1),'LineWidth', 1, 'LineStyle', ':',  'Marker', 'none', 'Color', 'k');
xlabel('time');
ylabel('% deviations from S.S.');
if jj==1
legend('Persistent \rho_{\mu} = 0.9','IID \rho_{\mu} = 0.0' ,'fontSize',10);
end

title([var_names_long{jj} ' (' var_names{jj} ')']); 
sgtitle('IRFs to a Markup Shock', 'fontSize',14);

end
