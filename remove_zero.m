function [ change ] = remove_zero( change )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

while ( change(1) == '0' || ~isnumeric(change(1)) )
    %if ( isnumeric(change(1)) && change(1) ~= '0' )
    if (change(1) ~= '0')
        break;
    end
    
    change = change(2:end);
    
    if ( isempty(change))
        change = '0';
        break;
    end
    
    
end
%{
change = change(i:end);

if (isempty(change))
    change = '0';
end
%}
end

