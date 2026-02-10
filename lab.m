file = "C:\Users\USER\Desktop\5th Year\5.2\Robotics\labs\student.jpg";

exist(file,"file")          
info = imfinfo(file)        

myImage = imread(file);
whos myImage                

figure; imshow(myImage); title("student.jpg");
