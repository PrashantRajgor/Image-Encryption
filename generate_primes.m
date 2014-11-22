function [ prime_arr ] = generate_primes( secret_incr )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

tic

time_seed = time_code();

time_arr(1) = time_seed;
prime_arr(1) = prime_factorize(1);

for i = 2:25
    time_arr(i) = time_arr(i-1) + secret_incr;
    prime_arr(i) = prime_factorize(time_arr(i));
    display(prime_arr(i));
end



toc


end

