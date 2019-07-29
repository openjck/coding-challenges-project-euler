square :: Integer -> Integer
square n = n * n

sumOfSquares :: [Integer] -> Integer
sumOfSquares = sum . map square

squareOfSum :: [Integer] -> Integer
squareOfSum = square . sum

answer = (squareOfSum [1..100]) - (sumOfSquares [1..100])
main = print answer
