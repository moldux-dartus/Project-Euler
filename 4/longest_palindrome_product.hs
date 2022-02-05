isPalindrome :: Int -> Bool
isPalindrome n = if (show n) == (reverse (show n)) then True else False

--lower bound of range is educated guess, would be smarter to paramaterize
products = [ x * y | x <- [700..999], y <- [700..999]]

showAnswer = last $ filter isPalindrome products
