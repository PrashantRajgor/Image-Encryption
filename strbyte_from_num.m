function [ ans ] = strbyte_from_num( num )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


ans = pick_last_8(dec2bin(num));


end

