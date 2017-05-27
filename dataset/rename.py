import os

def GetFileList(dir, fileList):
    newDir = dir
    if os.path.isfile(dir):
        fileList.append(dir)
    elif os.path.isdir(dir):  
        for s in os.listdir(dir):
         
            newDir=os.path.join(dir,s)
            GetFileList(newDir, fileList)  
    return fileList

list = GetFileList('6_', [])
index=0
prefix='6_\\'

for e in list:
	os.rename(e,prefix+'g'+str(index)+'.jpg')
	index=index+1
	
