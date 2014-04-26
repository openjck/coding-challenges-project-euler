gpf :: Integer -> Integer
gpf = last . filter (isPrime) . factors

isPrime :: Integer -> Bool
isPrime n = none (\x -> x `evenlyDivides` n) [2..(closestSquareRoot n)]

none :: (a -> Bool) -> [a] -> Bool
none f l = not (any f l)

evenlyDivides :: Integer -> Integer -> Bool
evenlyDivides divisor dividend = dividend `mod` divisor == 0

closestSquareRoot :: Integer -> Integer
closestSquareRoot = floor . sqrt . fromIntegral

factors :: Integer -> [Integer]
factors n = foldr concatFactors [] [1..csr]
  where csr = closestSquareRoot n
        concatFactors x acc =
            if (x `evenlyDivides` n && x /= csr)
               then x : acc ++ [n `div` x]
               else acc

answer = gpf 600851475143
main = print answer
