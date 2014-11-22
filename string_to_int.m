function [ num ] = string_to_int( str )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

num = 0;
for i = 1:length(str)
    num = num + str(i) - 48;
    num = num * 10;
end
num = num / 10;


end

