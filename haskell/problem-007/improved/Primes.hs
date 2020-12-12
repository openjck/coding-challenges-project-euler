module Primes (primes, sieveOfEratosthenes) where

import Utilities.Math

type Sieve = [Integer] -> [Integer]

primes :: Sieve -> [Integer]
primes sieve = sieve candidates
  where
    candidates = 2 : [3, 5 ..]

sieveOfEratosthenes :: Sieve
sieveOfEratosthenes (prime : otherCandidates) = prime : (sieveOfEratosthenes nonFactors)
  where
    nonFactors = filter (\x -> not (prime `isFactorOf` x)) otherCandidates
