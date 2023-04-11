I = checkerboard;


%Find the corners.
corners = detectHarrisFeatures(I);

%Display the results.
imshow(I); hold on;
plot(corners.selectStrongest(50));