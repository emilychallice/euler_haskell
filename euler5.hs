main :: IO()

--SLOW SOLUTION:
isDivisibleUpTo20 :: Int -> Bool
isDivisibleUpTo20 n = map (n `mod`) [11, 12, 13, 14, 15, 16, 17, 18, 19, 20] == replicate 10 0

testNums :: [Int]
testNums = [2520, 2520+2520..] --must be a multiple of 2520

slowSolution :: Int
slowSolution = head [n | n <- testNums, isDivisibleUpTo20 n]

--FAST SOLUTION - factor into primes
-- 20 = 2*2*5
-- 18 = 2*3*3
-- 16 = 2*2*2*2
-- 15 = 3*5
-- 14 = 2*7
-- 12 = 2*2*3
-- primes 19*17*13*11 * 2*2*2*2*3*3*5*7
fastSolution :: Int
fastSolution = product [19, 17, 13, 11, 2, 2, 2, 2, 3, 3, 5, 7]

main = print fastSolution