%reading the coins image
Coins = imread('C:\Users\Hp\OneDrive\CV\Assignment4_Hough Transformation\rpscoins.jpg');
Coins =rgb2gray(double(Coins)/255); %transforming image to grayscale to used to find edges
%Coins = imread('coins.png');
%imshow(Coins)

Edge = edge(Coins, 'canny'); %identifying weak edges using canny
%imshow(Edge);

[c,r] = imfindcircles(Edge, [40, 140]);
imshow(Coins); 
viscircles(c,r); %plotting detected circles on the original image

%histogram(r);
%hist(r,3);
h = hist(r, 3); %binning all coins into three categories

money = h.*[1 2 5];
money = sum(h.*[1 2 5]); %calculating sum
disp(money) %Ans: 11