module Utilities.Math (isFactorOf) where

isFactorOf :: Integer -> Integer -> Bool
isFactorOf divisor dividend = dividend `mod` divisor == 0
