main :: IO()

nums :: [Int]
nums = [999*999, 999*999-1..100*100]

isPalindrome :: Int -> Bool
isPalindrome n = show n == reverse (show n)

findHighestPalindrome :: Int
findHighestPalindrome = head [n | n <- nums, isPalindrome n, hasTwoThreeDigitFactors n]

getThreeDigitFactors :: Int -> [(Int, Int)]
getThreeDigitFactors n = do
  let threeDigFactors = [i | i <- [100..999], mod n i == 0]
  if null threeDigFactors then [(1, n)] else [(f, div n f) | f <- threeDigFactors]
  
hasTwoThreeDigitFactors :: Int -> Bool
hasTwoThreeDigitFactors n = (not . null) [(i, j) | (i, j) <- getThreeDigitFactors n, length (show i) == 3 && length (show j) == 3]

main = print findHighestPalindrome