myImage = imread("C:\Users\USER\Desktop\5th Year\5.2\Robotics\labs\student.jpg");

% Convert to grayscale 
if size(myImage,3) == 3
    grayImage = rgb2gray(myImage);
else
    grayImage = myImage;
end


figure;
subplot(1,2,1); imshow(myImage);   title("Original");
subplot(1,2,2); imshow(grayImage); title("Grayscale");

