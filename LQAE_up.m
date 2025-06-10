clc
clear all;
Im = imread('Deer_g.jpg');
[row1 col1]=size(Im);
Img2=Im(1:row1,1:col1);

blocksize=8;

PSNR1=0;
absB1q=0;

BR=0;
Z=zeros(row1, col1);
Y=zeros(row1, col1);
for i=1:blocksize:row1
  for j=1:blocksize:col1

    W1=Img2(i:i+blocksize-1,j:j+blocksize-1);
       
    DCT=dct2(W1);
    
    q=8;
    
    B1q=round(DCT/q);
    
    B1q_sign=sign(B1q);

    absB1q= abs(B1q);
    
    [x y z]=find(absB1q);
    
           
    dectoBin=dec2bin(z,8);
    
    dectoBina=uint16(dectoBin);
    dectoBina=dectoBina-48;
    numone=nnz(dectoBina);
    
    rowb=dec2bin(x,log2(blocksize)+1);

    X_max=max(x);
    if X_max==8
        X_max_p=X_max;
    else
    end

    urowb=uint16(rowb);
    aurowb1=urowb-48;
    aurowb=aurowb1(:,:);

    aurowb3=aurowb1(:,1);
    X_max_LSB=max(aurowb3);

    erowb=nnz(aurowb);
    
    
    colb=dec2bin(y,log2(blocksize)+1);

    ucolb=uint16(colb);
    aucolb=ucolb-48;

    aucolb=aucolb(:,:);


    ecolb=nnz(aucolb);

    col_b_max=max(y);
    if col_b_max==8
        C_max=col_b_max;
    else
    end

    
    
    statebit=erowb+ecolb;
    
    sbit=nnz(B1q_sign);
    
    auxbit=numone;
    
    
    %BR=BR+(numone+sbit+auxbit)/(1024*1024);
    BR=BR+(numone+sbit+statebit+auxbit)/(1024*1024);
   

    %%Decoder


   
   
    B2=B1q.*q;
    
   %B2=B1q.*q;


   
    RI1=idct2(B2);
    Z(i:i+7,j:j+7)=RI1;
    Y(i:i+7,j:j+7)=absB1q;
  end
end

PSNR1=CalculatePSNR(Img2, Z);


numofblockr=row1/blocksize;
numofblockc=col1/blocksize;

rposioflastblock=row1-blocksize;
cposioflastblock=col1-blocksize;

numofcolbit=numel(dec2bin(rposioflastblock))-numel(dec2bin(blocksize));
numofrowbit=numel(dec2bin(cposioflastblock))-numel(dec2bin(blocksize));
tbitr=numofblockr*numofblockc*(numofcolbit+numofrowbit)/(1000*1000);


bpp=(BR+tbitr)*(1024*1024)/(row1*col1)

PSNR1