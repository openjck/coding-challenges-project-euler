main :: IO ()
main = print answer

answer :: Integer
answer = lcmMultiple [1 .. 20]

lcmMultiple :: [Integer] -> Integer
lcmMultiple l = foldl lcm 1 l
