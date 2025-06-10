%%Baboon, size=512*512

clc
clear all

%Image name: Baboon.jpg.%image size:512*512.

%%Image name =Baboon, Gray, 512*512. Approach name Basic JPEG(Zigzag and
%%Huffman Coding)Factor=q/8,q/10,q/5,q/4.5,q/4 


bpp_jpeg=[2.86 2.36 1.83 1.15 0.45];
psnr1_jpeg=[42.40 36.58 30.42 24.64 20.48];

%LQA_gray-scale after applying DCT with quantization, Q=8, 16, 32, 90, 120
%Image size=1024*1024. Quantum apporach name: modified ZSCNEQR 
%% Condition: Z, X (:,1:2), Y(:,:)
%PALQA

bpp_palqa=[3.5158 3.0962 2.4926 1.2309 0.93]; %NZNEQR Q=8,16,32,90, 120

psnr_palqa=[46.9971  41.2797 35.4061 30.2083 29.78];%modified ZSCNEQR

%NZNEQR


bpp_nzneqr=[47.3304 34.9300 22.1559 7.2403 3.8305 ];
psnr_nzneqr=[47.0196 40.8953 35.2619 30.7503 30.1624];

plot(bpp_jpeg, psnr1_jpeg, '--s',bpp_palqa,psnr_palqa,'-v','MarkerSize', 4,'LineWidth',1.5) %gray

%bar(D_MZSCNEQR_8)
%xticklabels({'8-Q, 3-Q(X), 2-Q(Y)(Higher)','8-Q, 3-Q(X), 1-Q(Y)(Lower)','8-Q, 3-Q(X)','8-Q','1-Q(Y-middle)'});
%legend('PSNR=51.65(db)')
%bar(X1,Z1);
%xlabel('Required bits considering state preparation(MB)');
%ylabel('Required bpp');
%ylabel('PSNR(db)');
%%%%%Scenery%%NEQR, %%%% Condition= Y(:,2) 
%%Quantumtization=8, 16, 32, 70, 120;
%plot(BR_LQAE_ZSCNEQR,PSNR_T,'-v',BR_NEQR,PSNR_T,'-h','MarkerSize', 4,'LineWidth',1.5) %gray
%plot(k3,l3,'-d', c1,d1,'--*',x6,y6, '--p' , i1,j1, '--p','MarkerSize',4,'LineWidth',1.5) %red
%plot(k4,l4,'-d', c2,d2,'--*',x7, y7, '--p' , i2,j2, '--p' ,'MarkerSize',4,'LineWidth',1.5)% green 
%plot(k5,l5,'-d', c3,d3,'--*',x8, y8, '--p' , i3,j3, '--p' ,'MarkerSize',4,'LineWidth',1.5) %blue
%legend('8-Q, 3-Q(X), 2-Q(Y)(Higher)','8-Q, 3-Q(X), 1-Q(Y)(Lower)','8-Q, 3-Q(X)','8-Q','1-Q(Y-middle)');
%legend('SCMFRQI(Proposed)(Red)','DCTEFRQI(Red)',  'DCTNCQI(Red)', 'DCTINCQI(Red)')
%legend('SCMFRQI(Proposed)(Green)','DCTEFRQI(Green)',  'DCTNCQI(Green)', 'DCTINCQI(Green)')
legend('Jpeg', 'PALQA(Pro.)')

%bar(X1,Z1);
xlabel('bpp');
ylabel('PSNR(db)');
%ylabel('PSNR(db)');
%bar(X1)
set(gca,'XLim', [0.4,3.6], 'XTick', 0.4:.1:3.6,...
'XTickLabel', 0.4:.1:3.6);
%grid on

%xticklabels({8','16','32','64','128' });
set(gca,'YLim', [20,47.5], 'YTick', 20:1:47.5,...
'YTickLabel', 20:1:47.5);
grid on




