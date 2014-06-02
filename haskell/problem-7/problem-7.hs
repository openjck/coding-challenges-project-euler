import Primes

main :: IO ()
main = print answer

answer :: Integer
answer = nthPrime 10001

nthPrime :: Int -> Integer
nthPrime n = (primes sieveOfEratosthenes) !! (n - 1)
