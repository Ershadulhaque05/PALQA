clc
clear all
%Image name: pepper.jpg.%image size:512*512.

%%Image name =Pepper, Gray, 512*512. Approach name Basic JPEG(Zigzag and
%%Huffman Coding), Q Factor=Q/10,Q/8, Q/5,Q/4.5, Q/4


bpp=[1.39 1.08 0.66 0.36 0.21 ];
psnr1=[44.58 38.40 33.43 29.14 25.18];


%Image name: Peppers.jpg.%image size: 512*512.
%LQA_gray-scale after applying DCT with quantization, Q=8, 16, 32, 70
%Image size=1024*1024. Quantum apporach name: modified ZSCNEQR 
%% Z, Y(:,:) , X(:,1:2)

bpp_PALQA=[1.78 1.46 1.03 0.79 0.73];

PSNR_T=[50.46 43.49 38.33 34.57 32.97];

%bar(D_MZSCNEQR_8)
%xticklabels({'8-Q, 3-Q(X), 2-Q(Y)(Higher)','8-Q, 3-Q(X), 1-Q(Y)(Lower)','8-Q, 3-Q(X)','8-Q','1-Q(Y-middle)'});
%legend('PSNR=51.65(db)')

%bar(X1,Z1);
%xlabel('Required bits considering state preparation(MB)');
%ylabel('Required bpp');
%ylabel('PSNR(db)');

%%%%%Baboon%%NEQR, %%%% Condition= Y(:,2) 
%%Quantumtization=8, 16, 32, 70, 120;



Bpp_NZNEQR=[11.27 7.33 3.44 1.16 0.8790];

psnr_NZNEQR=[50.46 43.12 38.12 34.48  33.7130];

plot(bpp_PALQA,PSNR_T,'-v',bpp,psnr1,'--*','MarkerSize', 4,'LineWidth',1.5) %gray

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
set(gca,'XLim', [0.2,1.8], 'XTick', 0.2:0.1:1.8,...
'XTickLabel', 0.2:0.1:8);
%grid on
set(gca,'YLim', [24,50], 'YTick', 24:1:50,...
'YTickLabel', 24:1:50);
grid on