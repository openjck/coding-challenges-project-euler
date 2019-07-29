import Data.Set as Set

main :: IO ()
main = print answer

answer :: Int
answer = sumOfPrimesBelow 2000000

sumOfPrimesBelow :: Int -> Int
sumOfPrimesBelow n = sum naturals - sum composites - sum neitherPrimeNorComposite
    where naturals = [1..n]
          composites = compositesUntil n
          neitherPrimeNorComposite = [1]

-- Return a set of composites up to and including the number "until". This
-- algorithm works something like the "marking" stage of the Sieve of
-- Eratosthenes.
--
-- Some optimizations are used here:
--
-- * When generating relevant multiples, we only need to consider multiples
--   starting from the square of the factor. Any others will have already been
--   generated as a multiple of an earlier factor. This is a common optimization
--   of the Sieve of Eratosthenes.
-- * The set of factors which are used to find relevant multiples does not need
--   to include even numbers other than 2, since all multiples of all even
--   numbers are also multiples of 2.
-- * The set of factors which are used to find relevant multiples can end at the
--   square root of "until", since the lowest relevant multiple is the square of
--   the factor and we ignore all multiples greater than "until".
compositesUntil :: Int -> Set Int
compositesUntil until = Set.foldl unionMultiples Set.empty factors
    where unionMultiples acc n = Set.union acc (multiples n)
          factors = Set.fromDistinctAscList ([2] ++ [3,5..(floor $ sqrt $ fromIntegral until)])
          multiples n = Set.fromDistinctAscList [n ^ 2, n ^ 2 + n..until]
