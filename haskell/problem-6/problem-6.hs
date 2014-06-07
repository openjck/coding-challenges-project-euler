main = print answer

answer = (squareOfSum [1..100]) - (sumOfSquares [1..100])

squareOfSum :: [Integer] -> Integer
squareOfSum = square . sum

sumOfSquares :: [Integer] -> Integer
sumOfSquares = sum . map square

square :: Integer -> Integer
square n = n * n
