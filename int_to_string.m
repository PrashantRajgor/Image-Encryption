function [ str_num ] = int_to_string( num )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

a = 0;
str_num = ' ';

while (num > 0)
    a = mod(num,10);
    num = floor(num / 10);
    str_num = strcat(str_num, char(a + 48));
end

str_num = reverse_string(str_num);
str_num = remove_zero(str_num);

end

