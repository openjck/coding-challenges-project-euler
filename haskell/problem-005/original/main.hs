import Data.List
import Data.Maybe

answer :: Integer
answer = fromJust smallest
    where smallest = find divisibleByAll [20,40..]
          divisibleByAll n = all (\x -> x `evenlyDivides` n) [3..19]

evenlyDivides :: Integer -> Integer -> Bool
evenlyDivides divisor dividend = dividend `mod` divisor == 0

main = print answer
