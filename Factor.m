classdef Factor
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        origin = 0;
        good_prime = 0;
    end
    
    methods
        function derive()
            origin_cpy = 0;
            big_prime = 0;
            divisor = 0;
            
            origin_cpy = origin;
            
            while (origin_cpy >= 4)
                if (mod(origin_cpy,2) == 0)
                    origin_cpy = origin_cpy / 2;
                    big_prime = 2;
                else
                    big_prime = 3;
                    divisor = 0;
                    while (divisor == 0)
                        if (mod(origin_cpy, big_prime) == 0)
                            divisor = 1;
                            origin_cpy = origin_cpy / big_prime;
                        end
                        big_prime = big_prime + 2;
                    end
                    big_prime = big_prime - 2;
                end
            end
            good_prime = big_prime;
        end
    end
end

