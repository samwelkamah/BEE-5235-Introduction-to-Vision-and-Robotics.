%  Read image
myImage = imread("C:\Users\USER\Desktop\5th Year\5.2\Robotics\labs\student.jpg");


if size(myImage,3) == 3
    grayImage = rgb2gray(myImage);
else
    grayImage = myImage;
end

 Gray + 20 (brightness shift)
grayPlus20 = imadd(grayImage, 20);

 Vertical flip (top-to-bottom)
flipImage = flipud(grayPlus20);

% Display: Original, Gray, Gray+20, Flip
figure;
subplot(1,4,1); imshow(myImage);     title("Original");
subplot(1,4,2); imshow(grayImage);   title("Grayscale");
subplot(1,4,3); imshow(grayPlus20);  title("Gray + 20");
subplot(1,4,4); imshow(flipImage);   title("Vertical flip (flipud)");
