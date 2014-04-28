lcmMultiple :: [Integer] -> Integer
lcmMultiple l = foldl lcm 1 l

answer = lcmMultiple [1..20]
main = print answer
