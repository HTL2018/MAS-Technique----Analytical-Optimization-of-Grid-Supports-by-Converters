set(0,'DefaultAxesFontSize',20,'DefaultAxesFontName','Times New Roman','DefaultAxesFontWeight','bold','DefaultLineLineWidth',3,'DefaultAxesLineWidth',1)
Data=data_case2;
t1=.17;    t2=.7;
L1=find(Data.time==t1);  L2=find(Data.time==t2);

figure
subplot(3,1,1)
plot(Data.time(L1:L2), (Data.signals(1,1).values(L1:L2,1)),'b','LineWidth',2)
% hold on; plot(Data.time(L1:L2), (Data.signals(1,1).values(L1:L2,2)),'b','LineWidth',2)
hold on; plot(Data.time(L1:L2), (Data.signals(1,1).values(L1:L2,4)),'r--')
% hold on; plot(Data.time(L1:L2), (Data.signals(1,1).values(L1:L2,5)),'b--')
ylabel(['V_G_r_i_d (p.u.)';' V_P_C_C (p.u.) '], 'FontSize', 30); grid on
legend('|V_g+|','|V_p_c_c+|', 'FontSize', 14)
XLIM=[.17 t2]; xlim(XLIM)
YLIM=[0.6 1.05]; ylim(YLIM)
% title('Test4: Operating mode variation')
% xlabel('Time (s)')
alldatacursors = findall(gcf,'type','hggroup'); set(alldatacursors,'FontSize',30); set(alldatacursors,'FontName','Times')

subplot(3,1,2)
plot(Data.time(L1:L2), (Data.signals(1,2).values(L1:L2,4)),'r--','LineWidth',3)
% hold on; plot(Data.time(L1:L2), (Data.signals(1,2).values(L1:L2,5)),'b--','LineWidth',3)
% hold on; plot(Data.time(L1:L2), (Data.signals(1,2).values(L1:L2,6)),'g--','LineWidth',3)
hold on; plot(Data.time(L1:L2), (Data.signals(1,2).values(L1:L2,1)),'r','LineWidth',2) 
hold on; plot(Data.time(L1:L2), (Data.signals(1,2).values(L1:L2,2)),'b','LineWidth',2)
hold on; plot(Data.time(L1:L2), (Data.signals(1,2).values(L1:L2,3)),'g','LineWidth',2)
ylabel('i_a_b_c (p.u.)', 'FontSize', 30); grid on
legend('I_l_i_m_i_t')
XLIM=[.17 t2]; xlim(XLIM)
YLIM=[-1.7 1.8]; ylim(YLIM)
% title('Test4: Operating mode variation')
% xlabel('Time (s)')
alldatacursors = findall(gcf,'type','hggroup'); set(alldatacursors,'FontSize',30); set(alldatacursors,'FontName','Times')

subplot(3,1,3)
plot(Data.time(L1:L2), (Data.signals(1,3).values(L1:L2,2)),'r--','LineWidth',3) 
hold on; plot(Data.time(L1:L2), (Data.signals(1,3).values(L1:L2,1)),'k','LineWidth',2)
ylabel(['p (p.u.)'; 'q (p.u.)'], 'FontSize', 30); grid on
legend('q','p')
XLIM=[.17 t2]; xlim(XLIM)
YLIM=[-1 1.3]; ylim(YLIM)
% title('Test4: Operating mode variation')
xlabel('Time (s)', 'FontSize', 30)
alldatacursors = findall(gcf,'type','hggroup'); set(alldatacursors,'FontSize',30); set(alldatacursors,'FontName','Times')


