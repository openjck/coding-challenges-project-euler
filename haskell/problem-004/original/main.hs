answer :: Integer
answer = maximum . filter isPalindrome $ products
    where products = [x * y | x <- threeDigitNumbers, y <- threeDigitNumbers]
          threeDigitNumbers = [999,998..100]

isPalindrome :: Integer -> Bool
isPalindrome n = (str == reverse str)
    where str = show n

main = print answer
