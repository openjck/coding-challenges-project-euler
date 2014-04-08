answer :: Integer
answer = sum (factorsBelow 1000)
  where factors = [n | n <- [1..], n `mod` 3 == 0 || n `mod` 5 == 0]
        factorsBelow x = takeWhile (< x) factors

main = print answer
