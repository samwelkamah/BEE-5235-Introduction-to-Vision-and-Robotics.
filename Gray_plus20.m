% 1) Read image
myImage = imread("C:\Users\USER\Desktop\5th Year\5.2\Robotics\labs\student.jpg");

%  Convert to grayscale
if size(myImage,3) == 3
    grayImage = rgb2gray(myImage);
else
    grayImage = myImage;
end

%  Brightness shift: Gray + 20 (safe clipping)
grayPlus20 = imadd(grayImage, 20);  


figure;
subplot(1,3,1); imshow(myImage);     title("Original");
subplot(1,3,2); imshow(grayImage);   title("Grayscale");
subplot(1,3,3); imshow(grayPlus20);  title("Gray + 20");
