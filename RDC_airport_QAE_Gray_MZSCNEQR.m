
clc
clear all

%Image name:Airport.jpg.%image size: 512*512.
%LQA_gray-scale after applying DCT with quantization, Q=8 %Image
%size=512*512. Quantum apporach name: modified ZSCNEQR 
%% Z, Y(:,2) 

%%Image name =airport, Gray, 512*512. Approach name Basic JPEG(Zigzag and
%%Huffman Coding)Factor=2,4,8,16,32,


bpp=[2.04 1.61 1.06 0.52 0.23];
psnr1=[43.50 37.21 31.59  27.07 23.51];

%QF=32,36,50,60,110

bpp_palqa=[2.56 2.1253 1.4941 0.9354   0.77];%Q=8,16,32,60,120 

PSNR_T=[48.43 42.0141 36.3314 32.5727 31.52];

%bpp_palqa=[2.5616 2.1253 1.4941 0.9354  0.8282];%Q=8,16,32,60,90

%PSNR_T=[48.4343 42.0141 36.3314 32.5727 31.8602];

%bar(D_MZSCNEQR_8)
%xticklabels({'8-Q, 3-Q(X), 2-Q(Y)(Higher)','8-Q, 3-Q(X), 1-Q(Y)(Lower)','8-Q, 3-Q(X)','8-Q','1-Q(Y-middle)'});
%legend('PSNR=51.65(db)')

%bar(X1,Z1);
%xlabel('Required bits considering state preparation(MB)');
%ylabel('Required bpp');
%ylabel('PSNR(db)');

%%%%%Baboon%%NEQR, %%%% Condition= Y(:,2) 
%%Quantumtization=8, 16, 32, 70, 120;



Bpp_NZNEQR=[22.60 14.86  7.13 1.72 1.08];
psnr_nzneqr=[48.25  41.92 36.27 32.43 32.09];

plot(bpp, psnr1, '--h',bpp_palqa,PSNR_T,'-v','MarkerSize', 4,'LineWidth',1.5) %gray


%plot(bpp, psnr1, '--h',Bpp_NZNEQR,psnr_nzneqr,'--*',bpp_palqa,PSNR_T,'-v','MarkerSize', 4,'LineWidth',1.5) %gray

%plot(k3,l3,'-d', c1,d1,'--*',x6,y6, '--p' , i1,j1, '--p','MarkerSize',4,'LineWidth',1.5) %red
%plot(k4,l4,'-d', c2,d2,'--*',x7, y7, '--p' , i2,j2, '--p' ,'MarkerSize',4,'LineWidth',1.5)% green 
%plot(k5,l5,'-d', c3,d3,'--*',x8, y8, '--p' , i3,j3, '--p' ,'MarkerSize',4,'LineWidth',1.5) %blue

%xticklabels({8','16','32','64','128' });
legend('Jpeg','PALQA(Pro.)');
%legend('SCMFRQI(Proposed)(Red)','DCTEFRQI(Red)',  'DCTNCQI(Red)', 'DCTINCQI(Red)')
%legend('SCMFRQI(Proposed)(Green)','DCTEFRQI(Green)',  'DCTNCQI(Green)', 'DCTINCQI(Green)')
%legend('SCMFRQI(Proposed)(Blue)','DCTEFRQI(Blue)',  'DCTNCQI(Blue)', 'DCTINCQI(Blue)')

%bar(X1,Z1);
xlabel('bpp');
ylabel('PSNR(db)');
%ylabel('PSNR(db)');
%bar(X1)
set(gca,'XLim', [.2,2.6], 'XTick', .2:.1:2.6,...
'XTickLabel', .2:.1:2.6);
grid on
set(gca,'YLim', [22,49], 'YTick', 22:1:49,...
'YTickLabel', 22:1:49);
grid on