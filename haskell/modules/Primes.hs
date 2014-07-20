module Primes (primes, sieveOfEratosthenes)
where

primes :: ([Integer] -> [Integer]) -> [Integer]
primes sieve = sieve candidates
    where candidates = 2 : [3,5..]

sieveOfEratosthenes :: [Integer] -> [Integer]
sieveOfEratosthenes (prime:otherCandidates) = prime : (sieveOfEratosthenes nonFactors)
    where nonFactors = filter (\x -> x `mod` prime /= 0) otherCandidates
