function [ incr ] = pwd_incr( source_pwd )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

incr = 0;
for i = 1:length(source_pwd)
    incr = incr + (source_pwd(i)-0) * (i + 1);
end


end