fibList :: [Integer]
fibList = map fib [0..]
  where fib 0 = 0
        fib 1 = 1
        fib n = (fibList !! (n - 2)) + (fibList !! (n - 1))

answer :: Integer
answer = sum . filter even . takeWhile (< 4000000) $ fibList

main = print answer
