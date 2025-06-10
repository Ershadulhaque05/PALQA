clc
clear all

%Image name: Scenery.jpg.%image size: 1024*1024.

%%Image name =Scenery, Gray, 1024*1024. Approach name Basic JPEG(Zigzag and
%%Huffman Coding), Q Factor=q/8,q/10,q/5,q/4.5,q/4

bpp=[1.72 1.37 1.05 0.59 0.25 ];
psnr1=[44.10 38.43 32.55 27.06 23.27];



%Image name: Scenery.jpg.%image size: 512*512.
%LQA_gray-scale after applying DCT with quantization, Q=8, 16, 32, 70, 90
%Image size=1024*1024. Quantum apporach name: modified ZSCNEQR 
%% Z, Y(:,2) 



bpp_PALQA=[2.14 1.86 1.47 0.95 0.83];

PSNR_T=[49.3877 43.4726 37.7880  32.7810 32.1406];

%bar(D_MZSCNEQR_8)
%xticklabels({'8-Q, 3-Q(X), 2-Q(Y)(Higher)','8-Q, 3-Q(X), 1-Q(Y)(Lower)','8-Q, 3-Q(X)','8-Q','1-Q(Y-middle)'});
%legend('PSNR=51.65(db)')

%bar(X1,Z1);
%xlabel('Required bits considering state preparation(MB)');
%ylabel('Required bpp');
%ylabel('PSNR(db)');

%%%%%Baboon%%NEQR, %%%% Condition= Y(:,2) 
%%Quantumtization=8, 16, 32, 70, 120;



Bpp_NZNEQR=[19.7706  14.2719 8.0112 1.8993 1.1489];

bpp_psnr=[49.3597 43.0545 37.5782 32.8212  32.1789];

plot(bpp,psnr1,'--+',bpp_PALQA,PSNR_T,'-v','MarkerSize', 4,'LineWidth',1.5) %gray
%plot(bpp_PALQA,PSNR_T,'-v',Bpp_NZNEQR,PSNR_T,'--*','MarkerSize', 4,'LineWidth',1.5) %gray

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
set(gca,'XLim', [0.2,2.2], 'XTick', 0.2:.1:2.2,...
'XTickLabel', 0.2:.1:2.2);
%grid on
set(gca,'YLim', [22,50], 'YTick', 22:1:450,...
'YTickLabel', 22:1:50);
grid on