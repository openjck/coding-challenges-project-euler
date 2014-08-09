module Primes (primes, sieveOfEratosthenes)
where

type Sieve = [Integer] -> [Integer]

primes :: Sieve -> [Integer]
primes sieve = sieve candidates
    where candidates = 2 : [3,5..]

sieveOfEratosthenes :: Sieve
sieveOfEratosthenes (prime:otherCandidates) = prime : (sieveOfEratosthenes nonFactors)
    where nonFactors = filter (\x -> x `mod` prime /= 0) otherCandidates
