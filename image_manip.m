function [ output_args ] = image_manip(  )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

source = imread('C:\MATLAB Programs\icon.jpg', 'jpg');
%bw = (rgb2gray(source));
%d = size(bw);

%source = rgb2gray(source);

[m n o]= size(source);
nums = generate_bin_primes(time_code());
display('Primes generated.');
c = 1;


for i = 1:m
   for j = 1:n
       for k = 1:o
           
           
           %out(i,j,k)=bitxor(source(i,j,k),201);
           %encr(i,j,k)=bitxor(source(i,j,k),mod(nums(mod(i*j*k+i*k*k+j*j*k*k*k*i,1000)+1),255));
           %decr(i,j,k)=bitxor(encr(i,j,k),mod(nums(mod(i*j*k+i*k*k+j*j*k*k*k*i,1000)+1),255));
           
           
           encr(i,j,k)=bitxor(source(i,j,k),mod(nums(c),255));
           decr(i,j,k)=bitxor(encr(i,j,k),mod(nums(c),255));
           
           nums(c) = mod(nums(c)*nums(c)*nums(c+1), 10000000) + 1;
           c = mod(c, 254) + 1;
           
           %%%out(i,j,k)=bitxor(source(i,j,k),bitxor(nums(mod((i*j*k+i),25)+mod(j*k+i*k + i*j*k, 23)+1), nums(mod((i+j*k),25)+1)));
           
           %array(c) = bitxor(source(i,j,k),bitxor(nums(mod((i*j*k+i),25)+mod(j*k+i*k + i*j*k, 23)+1), nums(mod((i+j*k),25)+1)));
           %c = c + 1;
       end
   end
end

for i = m:-1:1
   for j = n:-1:1
       for k = o:-1:1
           
           
           %out(i,j,k)=bitxor(source(i,j,k),201);
           %encr(i,j,k)=bitxor(source(i,j,k),mod(nums(mod(i*j*k+i*k*k+j*j*k*k*k*i,1000)+1),255));
           %decr(i,j,k)=bitxor(encr(i,j,k),mod(nums(mod(i*j*k+i*k*k+j*j*k*k*k*i,1000)+1),255));
           
           
           encr(i,j,k)=bitxor(source(i,j,k),mod(nums(c),255));
           decr(i,j,k)=bitxor(encr(i,j,k),mod(nums(c),255));
           
           nums(c) = mod(nums(c)*nums(c)*nums(c+1), 10000000) + 1;
           c = mod(c, 254) + 1;
           
           %%%out(i,j,k)=bitxor(source(i,j,k),bitxor(nums(mod((i*j*k+i),25)+mod(j*k+i*k + i*j*k, 23)+1), nums(mod((i+j*k),25)+1)));
           
           %array(c) = bitxor(source(i,j,k),bitxor(nums(mod((i*j*k+i),25)+mod(j*k+i*k + i*j*k, 23)+1), nums(mod((i+j*k),25)+1)));
           %c = c + 1;
       end
   end
end
 
mark = mod(time_code(), 500000);
count = 0;
turn = 0;
i = 1;
j = 1;
k = 1;


    

%imwrite(same,'C:\MATLAB Programs\same.jpg');
imwrite(encr,'C:\MATLAB Programs\encr.jpg');
imwrite(decr,'C:\MATLAB Programs\decr.jpg');
%imwrite(bw,'C:\MATLAB Programs\bw.jpg');

display('Task completed.');

end