main :: IO()

nToFactor = 600851475143

getFirstFactor :: Int -> Int
getFirstFactor n = head [i | i <- [2..], mod n i == 0]

primeFactorSplit :: Int -> [Int]
primeFactorSplit 1 = [1]
primeFactorSplit n = do
  let primeFac = getFirstFactor n
  if primeFac == n then [primeFac] else primeFac:primeFactorSplit (div n primeFac)

getMaxPrimeFactor :: Int -> Int
getMaxPrimeFactor n = maximum (primeFactorSplit n)

main = print (getMaxPrimeFactor nToFactor)