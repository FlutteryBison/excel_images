im = imread("images" + filesep + "im.jpg");

%find largest dimension val
bigD = max(size(im,1), size(im,2));

%find scale factor to make largest dimention 128
scale = 128/bigD;

im = imresize(im,scale);

if (~exist("im.csv","file"))
    mkdir("csvImages");
end


out = im(:,:,1) + " " + im(:,:,2) + " " + im(:,:,3);


writematrix(out,"csvImages" + filesep + "im.csv",FileType="text");