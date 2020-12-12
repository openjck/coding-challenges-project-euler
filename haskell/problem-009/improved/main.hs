import Data.List

main :: IO ()
main = print answer

answer :: Integer
answer = tripletProduct . head . pythagoreanTriplesWithSum $ targetSum
  where
    tripletProduct (a, b, c) = a * b * c
    targetSum = 1000

-- When determining possible values for A and B, we must remember that B and C
-- cannot be zero. Thus the first possible A value is sum-2 (so that B and C can
-- be 1) and the first possible B value is sum-a-1 (so that C can be 1).
pythagoreanTriplesWithSum :: Integer -> [(Integer, Integer, Integer)]
pythagoreanTriplesWithSum sum = nubBy (\(a1, b1, c1) (a2, b2, c2) -> a1 + b1 + c1 == a2 + b2 + c2) allTriples
  where
    allTriples = [(a, b, c) | a <- [(sum -2), (sum -3) .. 1], b <- [(sum - a -1), (sum - a -2) .. 1], let c = sum - a - b, a ^ 2 + b ^ 2 == c ^ 2]
