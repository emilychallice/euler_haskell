main :: IO()

sumOfSquares :: [Float] -> Float
sumOfSquares x = sum (map (**2) x)

squareOfSum :: [Float] -> Float
squareOfSum x = (sum x) ** 2

main = print (squareOfSum [1..100] - sumOfSquares [1..100])