%clear all
handset=[];
y=[];
number=0;
train_start=401;
train_end=497;

%rand_index=randperm(498);

size=28;
rotation_thresh=0;
shift_thresh=0;

for type=1:6
    for index=train_start:train_end
        %number=number+1;
        index_real=rand_index(index+1);
        filename=['dataset\',int2str(type),'_\g',int2str(index_real),'.jpg'];
        [type index]
        
        origin=imread(filename);
        origin=rgb2gray(origin);
        
        
        level=graythresh(origin);
        origin=im2bw(origin,level);%用otsu割图像变成二值图像
        %origin=medfilt2(origin);
        %imshow(origin)
       
        %对图像进行旋转，进行数据增强 
        for rotate_order=-1*rotation_thresh:rotation_thresh
           
            tmp=imrotate(origin,rotate_order);
            tmp=imresize(tmp,[size,size]);
            
            for shift_x=-1*shift_thresh:shift_thresh
                
                
                
                for shift_y=-1*shift_thresh:shift_thresh
                    
                    se=translate(strel(1),[shift_x,shift_y]);
                    tmp_shift=imdilate(tmp,se);
                    %imshow(tmp_shift);

                    %add the data set 
                    tmp_shift=tmp_shift';
                    tmp_shift=tmp_shift(:);
                    handset=[handset,tmp_shift];

                    %label the data 
                    label=[0,0,0,0,0,0]';
                    label(type)=1;
                    y=[y,label];
                
                end       
            end            
        end    
    end
end


handset=handset';
y=y'




  