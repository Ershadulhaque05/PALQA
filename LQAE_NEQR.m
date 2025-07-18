clc
close all;
clear all;
Im = imread('cameraman_images.jpg');
Im1=Im(1:224,1:224);
%Img2= im2gray(Im1);
%Img1=im2double(Img);
%Img2=round(Img1.*255);
%Img2=Im1(:,:,3);
Img2=Im1;
[row1 col1]=size(Img2);
blocksize=8;
BR=0;
Z=zeros(row1, col1);
q=90;
for i=1:blocksize:row1
  for j=1:blocksize:col1

        W1=Img2(i:i+blocksize-1,j:j+blocksize-1);
        
        [row col]=size(W1);
        
        DCT=dct2(W1);
       
        Q_bit=dec2bin(q,log2(q));
        Q_bit=nnz(Q_bit);
        
        B1q=round(DCT/q);
        absB1q= abs(B1q);
        Max=max(max(absB1q));
        MN=min(min(absB1q));
        
        %writematrix(absB1q, '128lena5_11072022.csv');
        
        [x y z]=find(absB1q);     
                      
        B_bin=dec2bin(x,log2(blocksize));

        B_bin=uint16(B_bin);
        B_bin=B_bin-48;
        B=B_bin(:,1:2);
        B=nnz(B);
        
        B_discard=nnz(B_bin(:,3));
        C=dec2bin(y,log2(blocksize));
        C=uint16(C);
        C=C-48;
        C=C(:,:);

        C=nnz(C);
       
          

        D=dec2bin(z,8);
        D=uint16(D);
        D=D-48;
        D=nnz(D);
        Sbit=D;
        %BR= Q_bit+BR+(C)*D/(1024*1024);

        BR=BR+(B_discard+D+Sbit+(B+C)*D)/(1024*1024);

        %BR=BR+(numone_b+(statebit_one)*numone_b)/(1000*1000);                           
           
        B2=B1q.*q;
        
        RI1=idct2(B2);
        %figure 
        %I1=imshow(RI1,[0, 255]);
        Z(i:i+7,j:j+7)=RI1;

  end
end


PSNR1=CalculatePSNR(Img2, Z);

%tofolli=((log2(16)+log2(16)+1+1)*sbit)/(1000*1000);

numofblockr=row1/blocksize;
numofblockc=col1/blocksize;

rposioflastblock=row1-blocksize;
cposioflastblock=col1-blocksize;

numofcolbit=numel(dec2bin(rposioflastblock))+numel(dec2bin(blocksize));
numofrowbit=numel(dec2bin(cposioflastblock))+numel(dec2bin(blocksize));
tbitr=numofblockr*numofblockc*(numofcolbit+numofrowbit)/(1024*1024);

BR=BR+tbitr;

bpp=(BR*1024*1024)/(row1*col1)

PSNR1