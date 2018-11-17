clear all
set(0,'DefaultAxesFontSize',20,'DefaultAxesFontName','Times New Roman','DefaultAxesFontWeight','bold','DefaultLineLineWidth',3,'DefaultAxesLineWidth',1)
n=0:0.05:1;
P=.9:0.2:1.9;


for i=1:6
    for j=1:21
        Q(i)=sqrt(1-P(i)^2);
        pBPSC(i,j)=n(j)*sqrt(P(i)^2+Q(i)^2);
        pICPS(i,j)=n(j)*Q(i)/sqrt(1-n(j)^2);
        pPNSC(i,j)=2*n(j)*Q(i)/(1-n(j)^2);
    end
end

figure
grid on
plot(0:0.05:1,pBPSC(1,1:21),'LineWidth',3)
hold on
plot(0:0.05:1,pICPS(1,1:21),'r','LineWidth',3)
hold on
plot(0:0.05:1,pPNSC(1,1:21),'g','LineWidth',3)
ylabel('p_m_a_x (p.u.)')
legend('BPSC','ICPS','PNSC')
ylim([0 3])
xlabel('Unbalance factor, n')
title('S=1 p.u. , PF=0.9')
grid on
% plot(0:0.05:1,pICPS(2,1:21),'r','LineWidth',2)
% hold on
% plot(0:0.05:1,pICPS(3,1:21),'r','LineWidth',1)
% hold on
% plot(0:0.05:1,pPNSC(2,1:21),'g','LineWidth',2)
% hold on
% plot(0:0.05:1,pPNSC(3,1:21),'g','LineWidth',1)
% hold on



% for i=1:11
%     for j=1:11
%         for k=1:5
%             pmax1(i,j,k)=n(k)*sqrt(P(i)^2+Q(j)^2)
%             pmax2(i,j,k)=n(k)*Q(j)/sqrt(1-n(k)^2)
%             pmax3(i,j,k)=2*n(k)*Q(j)/(1-n(k)^2)
% 
%         end
%     end
% end

% for i=1:5
%     plot(Q,pmax1(2,1:11,i))
%     hold on
%     plot(Q,pmax2(2,1:11,i),'r')
%     hold on
%     plot(Q,pmax3(2,1:11,i),'g')
%     hold on
% end