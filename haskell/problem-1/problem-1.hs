main = print answer

answer :: Integer
answer = sum (multiplesBelow 1000)
  where multiples = [n | n <- [1..], n `mod` 3 == 0 || n `mod` 5 == 0]
        multiplesBelow x = takeWhile (< x) multiples
