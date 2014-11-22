function [ ans ] = pick_last_8( str )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
ans = '';
flag = 0;
while (length(str) < 8)
    str(length(str) + 1) = '0';
    flag = 1;
end

if (flag == 1)
    str = reverse_string(str);
end

for i = 0:7
    ans(i+1) = str(length(str)-i);
end


end

