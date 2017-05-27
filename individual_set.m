clear all
handset=[];
y=[];
number=0;

size=28;

%手势1的数据集构建
for index=201:250
    number=number+1;
    filename=['dataset\',int2str(1),'_\g',int2str(index),'.jpg'];
    tmp=imread(filename);
    tmp=rgb2gray(tmp);
    level=graythresh(tmp);
    tmp=im2bw(tmp,level);%用otsu割图像变成二值图像
    tmp=imresize(tmp,[size,size]);
    tmp=double(tmp);
    %imshow(tmp)

    tmp=tmp';
    tmp=tmp(:);
    handset=[handset,tmp];
    
    %对应的手势1
    tmp=[1,0,0,0,0,0]';
    
    y=[y,tmp];
end





%手势2的数据集构建
for index=351:400
    number=number+1;
    filename=['dataset\',int2str(2),'_\g',int2str(index),'.jpg'];
    tmp=imread(filename);
    tmp=rgb2gray(tmp);
    level=graythresh(tmp);
    tmp=im2bw(tmp,level);%用otsu割图像变成二值图像
    tmp=imresize(tmp,[size,size]);
    tmp=double(tmp);
    %imshow(tmp)

    tmp=tmp';
    tmp=tmp(:);
    handset=[handset,tmp];

    %对应的手势2
    tmp=[0,1,0,0,0,0]';
    
    y=[y,tmp];
end


%手势3的数据集构建
for index=251:300
    number=number+1;
    filename=['dataset\',int2str(3),'_\g',int2str(index),'.jpg'];
    tmp=imread(filename);
    tmp=rgb2gray(tmp);
    level=graythresh(tmp);
    tmp=im2bw(tmp,level);%用otsu割图像变成二值图像
    tmp=imresize(tmp,[size,size]);
    tmp=double(tmp);
    %imshow(tmp)

    tmp=tmp';
    tmp=tmp(:);
    handset=[handset,tmp];

    %对应的手势3
    tmp=[0,0,1,0,0,0]';
    
    y=[y,tmp];
end

%手势4的数据集构建
for index=251:300
    number=number+1;
    filename=['dataset\',int2str(4),'_\g',int2str(index),'.jpg'];
    tmp=imread(filename);
    tmp=rgb2gray(tmp);
    level=graythresh(tmp);
    tmp=im2bw(tmp,level);%用otsu割图像变成二值图像
    tmp=imresize(tmp,[size,size]);
    tmp=double(tmp);
    %imshow(tmp)

    tmp=tmp';
    tmp=tmp(:);
    handset=[handset,tmp];

    %对应的手势4
    tmp=[0,0,0,1,0,0]';
    
    y=[y,tmp];
end

%手势5的数据集构建
for index=251:300
    number=number+1;
    filename=['dataset\',int2str(5),'_\g',int2str(index),'.jpg'];
    tmp=imread(filename);
    tmp=rgb2gray(tmp);
    level=graythresh(tmp);
    tmp=im2bw(tmp,level);%用otsu割图像变成二值图像
    tmp=imresize(tmp,[size,size]);
    tmp=double(tmp);
    %imshow(tmp)

    tmp=tmp';
    tmp=tmp(:);
    handset=[handset,tmp];

    %对应的手势5
    tmp=[0,0,0,0,1,0]';
    
    y=[y,tmp];
end




%手势6的数据集构建
for index=251:279
    number=number+1;
    filename=['dataset\',int2str(6),'_\g',int2str(index),'.jpg'];
    tmp=imread(filename);
    tmp=rgb2gray(tmp);
    level=graythresh(tmp);
    tmp=im2bw(tmp,level);%用otsu割图像变成二值图像
    tmp=imresize(tmp,[size,size]);
    tmp=double(tmp);
    %imshow(tmp)

    tmp=tmp';
    tmp=tmp(:);
    handset=[handset,tmp];

    %对应的手势6
    tmp=[0,0,0,0,0,1]';
    
    y=[y,tmp];
end




handset=handset';
y=y'




  