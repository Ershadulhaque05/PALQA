
clc
clear all

%Image name: deer.jpg.%image size: 1024*1024.
%LQA_gray-scale after applying DCT with quantization, Q=8 %Image
%size=1024*1024. Quantum apporach name: modified ZSCNEQR 
%% Condition=Z+X+Y(;,1:3), Z+X+Y(;,1),Z, Z+X,  Y(:,2) 

PSNR_8=51.65;

D_MZSCNEQR_8_all=[1.0559 0.9766 0.8065   0.9297  0.2343];
D_MZSCNEQR_8_=0.04;

Y=[51.65 51.65 51.65 51.65 51.65];

D_MZSCNEQR=[0.2343  0.2259  0.2144  0.1986 0.1903];

PSNR_T=[51.6523 44.7740 39.9758 35.5444 33.8100];

bar(D_MZSCNEQR_8_all,'black')
xticklabels({'8-C-Q, 3-X-Q, 3-Y-Q','8-Q, 3-Q(X), 1-Q(Y-M)','8-Q','8-Q,3-Q(X)','1-Q(Y-M)'});
legend('PSNR=51.65(db),q=8')

%bar(X1,Z1);
%xlabel('Required bits considering state preparation(MB)');
%ylabel('Required bpp');
%ylabel('PSNR(db)');

%%%%%Deer%%NEQR, %%%% Condition= Y(:,2) 
%%Quantumtization=8;




%Bpp_NEQR=[4.7401 3.3474 2.0014 0.7036  0.3028];



%plot(D_MZSCNEQR,PSNR_T,'-v',Bpp_NEQR,PSNR_T,'--*','MarkerSize', 4,'LineWidth',1.5) %gray

%plot(k3,l3,'-d', c1,d1,'--*',x6,y6, '--p' , i1,j1, '--p','MarkerSize',4,'LineWidth',1.5) %red
%plot(k4,l4,'-d', c2,d2,'--*',x7, y7, '--p' , i2,j2, '--p' ,'MarkerSize',4,'LineWidth',1.5)% green 
%plot(k5,l5,'-d', c3,d3,'--*',x8, y8, '--p' , i3,j3, '--p' ,'MarkerSize',4,'LineWidth',1.5) %blue

%xticklabels({8','16','32','64','128' });
%legend('8-Q, 3-Q(X), 2-Q(Y)(Higher)','8-Q, 3-Q(X), 1-Q(Y)(Lower)','8-Q, 3-Q(X)','8-Q','1-Q(Y-middle)');
%legend('SCMFRQI(Proposed)(Red)','DCTEFRQI(Red)',  'DCTNCQI(Red)', 'DCTINCQI(Red)')
%legend('SCMFRQI(Proposed)(Green)','DCTEFRQI(Green)',  'DCTNCQI(Green)', 'DCTINCQI(Green)')
%legend('SCMFRQI(Proposed)(Blue)','DCTEFRQI(Blue)',  'DCTNCQI(Blue)', 'DCTINCQI(Blue)')

%bar(X1,Z1);
%xlabel('bpp');
%ylabel('PSNR(db)');


%set(gca,'XLim', [0,5], 'XTick', 0:0.2:5,...
%'XTickLabel', 0:0.2:5);
%grid on
%set(gca,'YLim', [30,48], 'YTick', 30:1:48,...
%'YTickLabel', 30:1:48);
%grid on