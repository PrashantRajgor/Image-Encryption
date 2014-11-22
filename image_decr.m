function [ output_args ] = image_manip(  )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

source = imread('C:\MATLAB Programs\done.jpg', 'jpg');
%bw = (rgb2gray(source));
%d = size(bw);

d = size(source);
nums = generate_bin_primes(12345);

c = 1;


for i = 1:d(1)
   for j = 1:d(2)
       for k = 1:d(3)
           
           
           out(i,j,k)=bitxor(source(i,j,k),201);
           
           
           
           %%%out(i,j,k)=bitxor(source(i,j,k),bitxor(nums(mod((i*j*k+i),25)+mod(j*k+i*k + i*j*k, 23)+1), nums(mod((i+j*k),25)+1)));
           
           %array(c) = bitxor(source(i,j,k),bitxor(nums(mod((i*j*k+i),25)+mod(j*k+i*k + i*j*k, 23)+1), nums(mod((i+j*k),25)+1)));
           %c = c + 1;
       end
   end
end
 
%done = gray2rgb(out);
%display(array);

done = out;
%imwrite(same,'C:\MATLAB Programs\same.jpg');
imwrite(done,'C:\MATLAB Programs\decr.jpg');
%imwrite(bw,'C:\MATLAB Programs\bw.jpg');

    

end

