function [ num_prime_arr ] = generate_bin_primes( secret_incr )

%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

tic

time_seed = time_code();

time_arr(1) = time_seed;
prime_arr(1) = prime_factorize(1);
num_prime_arr(1) = bin2dec(strbyte_from_num(prime_arr(1)));

for i = 2:1000
    time_arr(i) = time_arr(i-1) + secret_incr;
    prime_arr(i) = prime_factorize(time_arr(i));
    num_prime_arr(i) = bin2dec(strbyte_from_num(prime_arr(i)));
    %display('check');
    %display(prime_arr(i));
end





toc


end

