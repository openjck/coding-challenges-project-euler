module Primes (primes, sieveOfEratosthenes)
where

primes :: (Integer -> [Integer] -> [Integer]) -> [Integer]
primes sieve = sieve 2 [3,5..]

sieveOfEratosthenes :: Integer -> [Integer] -> [Integer]
sieveOfEratosthenes n candidates = n : (sieveOfEratosthenes nextPrime remainingCandidates)
    where nextPrime = head candidates
          remainingCandidates = filter (\x -> x `mod` n /= 0) candidatesLessN
          candidatesLessN = drop 1 candidates
