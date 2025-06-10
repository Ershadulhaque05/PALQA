
clc
clear all

%Image name: Building.jpg.%image size: 512*512. JPEG apporach,
%Q=Q1/10,Q1/8, Q1/5, Q1/4.5, Q1/4. 
bpp_jpeg=[2.04 1.67 1.28 0.73 0.32];

psnr_jpeg=[43.43 37.60 31.54 26.12 22.39];



%LQA_gray-scale after applying DCT with quantization, Q=8 %Image
%size=512*512. Quantum apporach name: modified ZSCNEQR 
%% Z, Y(:,2) 



PALQA=[2.51 2.19 1.69 0.94 0.84];

PSNR_PALQA=[48.53 42.53 36.76 31.16 30.56];

%bar(D_MZSCNEQR_8)
%xticklabels({'8-Q, 3-Q(X), 2-Q(Y)(Higher)','8-Q, 3-Q(X), 1-Q(Y)(Lower)','8-Q, 3-Q(X)','8-Q','1-Q(Y-middle)'});
%legend('PSNR=51.65(db)')

%bar(X1,Z1);
%xlabel('Required bits considering state preparation(MB)');
%ylabel('Required bpp');
%ylabel('PSNR(db)');

%%%%%Baboon%%NEQR, %%%% Condition= Y(:,2) 
%%Quantumtization=8, 16, 32, 70, 120;



Bpp_NZNEQR=[23.1691 16.6916 9.3031  1.6057];

PSNR_NZNEQR=[48.5140 42.2627 36.5843   31.1591];



plot(bpp_jpeg,psnr_jpeg,'--v',PALQA,PSNR_PALQA,'-D','MarkerSize', 4,'LineWidth',1.5) %gray

%plot(k3,l3,'-d', c1,d1,'--*',x6,y6, '--p' , i1,j1, '--p','MarkerSize',4,'LineWidth',1.5) %red
%plot(k4,l4,'-d', c2,d2,'--*',x7, y7, '--p' , i2,j2, '--p' ,'MarkerSize',4,'LineWidth',1.5)% green 
%plot(k5,l5,'-d', c3,d3,'--*',x8, y8, '--p' , i3,j3, '--p' ,'MarkerSize',4,'LineWidth',1.5) %blue

%xticklabels({8','16','32','64','128' });
%legend('8-Q, 3-Q(X), 2-Q(Y)(Higher)','8-Q, 3-Q(X), 1-Q(Y)(Lower)','8-Q, 3-Q(X)','8-Q','1-Q(Y-middle)');
%legend('SCMFRQI(Proposed)(Red)','DCTEFRQI(Red)',  'DCTNCQI(Red)', 'DCTINCQI(Red)')
%legend('SCMFRQI(Proposed)(Green)','DCTEFRQI(Green)',  'DCTNCQI(Green)', 'DCTINCQI(Green)')
%legend('SCMFRQI(Proposed)(Blue)','DCTEFRQI(Blue)',  'DCTNCQI(Blue)', 'DCTINCQI(Blue)')

%bar(X1,Z1);
xlabel('bpp');
ylabel('PSNR(db)');
%ylabel('PSNR(db)');
%bar(X1)
set(gca,'XLim', [0.3,2.6], 'XTick', 0.3:.1:2.6,...
'XTickLabel', 0.3:.1:2.6);
%grid on
set(gca,'YLim', [22,49], 'YTick', 22:1:49,...
'YTickLabel', 22:1:49);
grid on