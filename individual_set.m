clear all
handset=[];
y=[];
number=0;

size=28;

%����1�����ݼ�����
for index=201:250
    number=number+1;
    filename=['dataset\',int2str(1),'_\g',int2str(index),'.jpg'];
    tmp=imread(filename);
    tmp=rgb2gray(tmp);
    level=graythresh(tmp);
    tmp=im2bw(tmp,level);%��otsu��ͼ���ɶ�ֵͼ��
    tmp=imresize(tmp,[size,size]);
    tmp=double(tmp);
    %imshow(tmp)

    tmp=tmp';
    tmp=tmp(:);
    handset=[handset,tmp];
    
    %��Ӧ������1
    tmp=[1,0,0,0,0,0]';
    
    y=[y,tmp];
end





%����2�����ݼ�����
for index=351:400
    number=number+1;
    filename=['dataset\',int2str(2),'_\g',int2str(index),'.jpg'];
    tmp=imread(filename);
    tmp=rgb2gray(tmp);
    level=graythresh(tmp);
    tmp=im2bw(tmp,level);%��otsu��ͼ���ɶ�ֵͼ��
    tmp=imresize(tmp,[size,size]);
    tmp=double(tmp);
    %imshow(tmp)

    tmp=tmp';
    tmp=tmp(:);
    handset=[handset,tmp];

    %��Ӧ������2
    tmp=[0,1,0,0,0,0]';
    
    y=[y,tmp];
end


%����3�����ݼ�����
for index=251:300
    number=number+1;
    filename=['dataset\',int2str(3),'_\g',int2str(index),'.jpg'];
    tmp=imread(filename);
    tmp=rgb2gray(tmp);
    level=graythresh(tmp);
    tmp=im2bw(tmp,level);%��otsu��ͼ���ɶ�ֵͼ��
    tmp=imresize(tmp,[size,size]);
    tmp=double(tmp);
    %imshow(tmp)

    tmp=tmp';
    tmp=tmp(:);
    handset=[handset,tmp];

    %��Ӧ������3
    tmp=[0,0,1,0,0,0]';
    
    y=[y,tmp];
end

%����4�����ݼ�����
for index=251:300
    number=number+1;
    filename=['dataset\',int2str(4),'_\g',int2str(index),'.jpg'];
    tmp=imread(filename);
    tmp=rgb2gray(tmp);
    level=graythresh(tmp);
    tmp=im2bw(tmp,level);%��otsu��ͼ���ɶ�ֵͼ��
    tmp=imresize(tmp,[size,size]);
    tmp=double(tmp);
    %imshow(tmp)

    tmp=tmp';
    tmp=tmp(:);
    handset=[handset,tmp];

    %��Ӧ������4
    tmp=[0,0,0,1,0,0]';
    
    y=[y,tmp];
end

%����5�����ݼ�����
for index=251:300
    number=number+1;
    filename=['dataset\',int2str(5),'_\g',int2str(index),'.jpg'];
    tmp=imread(filename);
    tmp=rgb2gray(tmp);
    level=graythresh(tmp);
    tmp=im2bw(tmp,level);%��otsu��ͼ���ɶ�ֵͼ��
    tmp=imresize(tmp,[size,size]);
    tmp=double(tmp);
    %imshow(tmp)

    tmp=tmp';
    tmp=tmp(:);
    handset=[handset,tmp];

    %��Ӧ������5
    tmp=[0,0,0,0,1,0]';
    
    y=[y,tmp];
end




%����6�����ݼ�����
for index=251:279
    number=number+1;
    filename=['dataset\',int2str(6),'_\g',int2str(index),'.jpg'];
    tmp=imread(filename);
    tmp=rgb2gray(tmp);
    level=graythresh(tmp);
    tmp=im2bw(tmp,level);%��otsu��ͼ���ɶ�ֵͼ��
    tmp=imresize(tmp,[size,size]);
    tmp=double(tmp);
    %imshow(tmp)

    tmp=tmp';
    tmp=tmp(:);
    handset=[handset,tmp];

    %��Ӧ������6
    tmp=[0,0,0,0,0,1]';
    
    y=[y,tmp];
end




handset=handset';
y=y'




  