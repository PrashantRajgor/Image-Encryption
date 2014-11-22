function [ ans ] = prime_factorize( p )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% clear;
% clc;
% tic;
% p=600851475143 ;
m=2;
ans = 2;
% go_flag = 1;
% while (go_flag ~= 0)
%     % ans = 2;
%     while((sqrt(m)<p) && (mod(m,100000) == m))
%         j=rem(p,m);
%         if (j==0)
%             p=p/m;
%             ans = m;
%             go_flag = 0;
%             %disp(m);
%             %m=m+2;
%         else
%             m=m+1;
%         end
%     end
%     
%     p = p + 1;
% end

m=2;
while((sqrt(m)<p) && (mod(m,100000) == m))
    j=rem(p,m);
    if (j==0)
        p=p/m;
        %disp(m);
        m=m+1;
        ans = m;
    else
        m=m+1;
    end
end

    
    
% toc;



end

