import Data.Set as Set

main :: IO ()
main = print answer

answer :: Integer
answer = sumOfPrimesBelow 2000000

sumOfPrimesBelow :: Integer -> Integer
sumOfPrimesBelow n = sum candidates - sum composites
    where candidates = [2..n] -- The number 1 is neither prime nor composite
          composites = compositesUntil n

-- Return a Set of composites up to and including the number "until"
compositesUntil :: Integer -> Set Integer
compositesUntil until = Set.foldl concatMultiples Set.empty (Set.fromDistinctAscList [2..until])
    where concatMultiples acc n = Set.union acc (setOfMultiples n)
          setOfMultiples n = Set.fromDistinctAscList (takeWhile (<= until) (multiples n))

multiples :: Integer -> [Integer]
multiples n = [(n * 2), (n * 3)..]
