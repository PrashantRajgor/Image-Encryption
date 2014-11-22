function [ time_num ] = time_code()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

a = floor(clock);

time_num = a(1)*31536000 + a(2)*2628000 + a(3)*86400 + a(4)*3600 + a(5)*60 + a(6)*1;

time_num = floor(time_num);
    

end