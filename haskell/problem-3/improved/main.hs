import Utilities.List
import Utilities.Math

main :: IO ()
main = print answer

answer :: Integer
answer = gpf 600851475143

gpf :: Integer -> Integer
gpf n = last primeFactors
    where primeFactors = filter (isPrime) (factors n)

isPrime :: Integer -> Bool
isPrime n = none (\x -> x `isFactorOf` n) [2..(flooredSquareRoot n)]

factors :: Integer -> [Integer]
factors n = foldr concatFactors [] [1..(flooredSquareRoot n)]
    where concatFactors x acc =
              if (x `isFactorOf` n)
                  then if (n `div` x == x)
                      then x : acc
                      else x : acc ++ [n `div` x]
                  else acc

flooredSquareRoot :: Integer -> Integer
flooredSquareRoot = floor . sqrt . fromIntegral
