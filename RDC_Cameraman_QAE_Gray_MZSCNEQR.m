clc
clear all

%Image name: cameraman224224.jpg.%image size: 512*512.

%%Image name =cameraman, Gray, 224*224. Approach name Basic JPEG(Zigzag and
%%Huffman Coding)Factor=q/8,q/10,q/5,q/4.5,q/4 


bpp_jpeg=[1.51 1.30 1.09 0.61 0.35];
psnr1_jpeg=[46.02 39.98 33.27 27.41 23.75];

%LQA_gray-scale after applying DCT with quantization, Q=8, 16, 32, 70, 90
%Image size=1024*1024. Quantum apporach name: modified ZSCNEQR 
%% Condition: Z, X (:,1:2), Y(:,:)


bpp_nzneqr=[]; %NZNEQR Q=8,16,32,70,90

psnr_nzneqr=[];



bpp_palqa=[1.89 1.66 1.54 1.02 0.85];%modified ZSCNEQR

psnr_palqa=[51.60 43.66  39.53 33.75 31.95];

plot(bpp_jpeg, psnr1_jpeg, '--h',bpp_palqa,psnr_palqa,'-v','MarkerSize', 4,'LineWidth',1.5) %gray

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
set(gca,'XLim', [0.3,2], 'XTick', 0.3:0.1:2,...
'XTickLabel', 0.3:.1:2);
%grid on

%xticklabels({8','16','32','64','128' });
set(gca,'YLim', [23,51.60], 'YTick', 23:1:51.60,...
'YTickLabel', 23:1:51.60);
grid on
