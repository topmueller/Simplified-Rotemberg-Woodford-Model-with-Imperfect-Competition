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
plot(1:50, KPR_irfs.eta_zeta.epsilon_mu_0_8_tvar_mu.([var_names{jj} '_eta_zeta'])(1:50), 'b', 'linewidth', 2); hold on;
plot(1:50, KPR_irfs.eta_zeta.neg_epsilon_mu_0_8_tvar_mu.([var_names{jj} '_eta_zeta'])(1:50), 'r--', 'linewidth', 2); 
plot(1:50, KPR_irfs.eta_zeta.epsilon_mu_0_0_tvar_mu.([var_names{jj} '_eta_zeta'])(1:50), 'g--', 'linewidth', 2); 
zero_plot(1) = plot(1:50,zeros(1,50));
set(zero_plot(1),'LineWidth', 1, 'LineStyle', ':',  'Marker', 'none', 'Color', 'k');
xlabel('time');
ylabel('% deviations from S.S.');
if jj==1
legend('Pro. \mu \epsilon_{\mu y} = 0.8','Counter. \mu \epsilon_{\mu y} = -0.8', 'Constant \mu \epsilon_{\mu y} = 0.0' ,'fontSize',10);
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
plot(1:50, KPR_irfs.eta_g.epsilon_mu_0_8_tvar_mu.([var_names{jj} '_eta_g'])(1:50), 'b', 'linewidth', 2); hold on;
plot(1:50, KPR_irfs.eta_g.neg_epsilon_mu_0_8_tvar_mu.([var_names{jj} '_eta_g'])(1:50), 'r--', 'linewidth', 2); 
plot(1:50, KPR_irfs.eta_g.epsilon_mu_0_0_tvar_mu.([var_names{jj} '_eta_g'])(1:50), 'g--', 'linewidth', 2); 
zero_plot(1) = plot(1:50,zeros(1,50));
set(zero_plot(1),'LineWidth', 1, 'LineStyle', ':',  'Marker', 'none', 'Color', 'k');
xlabel('time');
ylabel('% deviations from S.S.');
if jj==1
legend('Pro. \mu \epsilon_{\mu y} = 0.8','Counter. \mu \epsilon_{\mu y} = -0.8', 'Constant \mu \epsilon_{\mu y} = 0.0' ,'fontSize',10);
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
plot(1:50, KPR_irfs.eta_z.epsilon_mu_0_8_tvar_mu.([var_names{jj} '_eta_z'])(1:50), 'b', 'linewidth', 2); hold on;
plot(1:50, KPR_irfs.eta_z.neg_epsilon_mu_0_8_tvar_mu.([var_names{jj} '_eta_z'])(1:50), 'r--', 'linewidth', 2); 
plot(1:50, KPR_irfs.eta_z.epsilon_mu_0_0_tvar_mu.([var_names{jj} '_eta_z'])(1:50), 'g--', 'linewidth', 2); 
zero_plot(1) = plot(1:50,zeros(1,50));
set(zero_plot(1),'LineWidth', 1, 'LineStyle', ':',  'Marker', 'none', 'Color', 'k');
xlabel('time');
ylabel('% deviations from S.S.');
if jj==1
legend('Pro. \mu \epsilon_{\mu y} = 0.8','Counter. \mu \epsilon_{\mu y} = -0.8', 'Constant \mu \epsilon_{\mu y} = 0.0' ,'fontSize',10);
end

title([var_names_long{jj} ' (' var_names{jj} ')']); 
sgtitle('IRFs to a Technology Shock', 'fontSize',14);

end


