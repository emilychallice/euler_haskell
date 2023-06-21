-- By considering the terms in the Fibonacci sequence whose values
-- do not exceed four million, find the sum of the even-valued terms.

main :: IO()

maxFib :: Int
maxFib = 4000000

buildFib :: [Int] -> [Int]
buildFib x = if sum [x!!0, x!!1] > maxFib then x else buildFib(sum [x!!0, x!!1] : x)

sumFibEven :: Int
sumFibEven = sum [x | x <- buildFib [1,1], even x]

main = print sumFibEven