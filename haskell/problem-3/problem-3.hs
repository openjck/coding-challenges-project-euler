-- Work in progress. Correctly returns the greatest prime factor, but is not
-- efficient enough to work with very large numbers.

import Data.List
import Data.Maybe

gpf :: Integer -> Integer
gpf n = fromJust (find prime factors)
  where factors = n : (filter (\x -> x `isFactor` n) [closestHalf, (closestHalf-1)..1])
        closestHalf = n `div` 2

prime :: Integer -> Bool
prime n = none (\x -> x `isFactor` n) [2..((floor . sqrt . fromIntegral) n)]

isFactor :: Integer -> Integer -> Bool
isFactor divisor dividend = dividend `mod` divisor == 0

none :: (a -> Bool) -> [a] -> Bool
none f l = not (any f l)
