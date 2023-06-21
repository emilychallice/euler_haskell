main :: IO ()

primes :: Int -> [Int]
primes 1 = [2]
primes n = do
  let prevPrimes = primes (n-1)
  let lastPrime = last prevPrimes
  prevPrimes ++ [head [x | x <- [lastPrime+1..],   null [y | y <- map (mod x) prevPrimes, y == 0]]]

getNthPrime :: Int -> Int
getNthPrime n = last (primes n)

main = print (getNthPrime 100)