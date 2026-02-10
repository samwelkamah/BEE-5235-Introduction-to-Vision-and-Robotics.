
myImage = imread("C:\Users\USER\Desktop\5th Year\5.2\Robotics\labs\student.jpg");

Convert to grayscale
if size(myImage,3) == 3
    grayImage = rgb2gray(myImage);
else
    grayImage = myImage;
end

%  Gray + 20
grayPlus20 = imadd(grayImage, 20);

%  Vertical flip (of grayPlus20)
flipImage = flipud(grayPlus20);

% Gamma correction (gamma = 0.5) on grayscale
gamma = 0.5;
gammaImage = imadjust(grayImage, [], [], gamma);

% Display
figure;
subplot(1,5,1); imshow(myImage);      title("Original");
subplot(1,5,2); imshow(grayImage);    title("Grayscale");
subplot(1,5,3); imshow(grayPlus20);   title("Gray + 20");
subplot(1,5,4); imshow(flipImage);    title("Vertical flip");
subplot(1,5,5); imshow(gammaImage);   title("Gamma (0.5)");
