main :: IO ()
main = print answer

answer :: Integer
answer = nthPrime 10001

nthPrime :: Int -> Integer
nthPrime n = primes !! (n - 1)

primes :: [Integer]
primes = sieve 2 [3,5..]

-- Sieve of Eratosthenes
sieve :: Integer -> [Integer] -> [Integer]
sieve n candidates = n : (sieve nextPrime remainingCandidates)
    where nextPrime = head candidates
          remainingCandidates = filter (\x -> not (n `isFactorOf` x)) candidatesLessN
          candidatesLessN = drop 1 candidates

isFactorOf :: Integer -> Integer -> Bool
isFactorOf divisor dividend = dividend `mod` divisor == 0
