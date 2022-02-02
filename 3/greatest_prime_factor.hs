--The prime factors of 13195 are 5, 7, 13 and 29.
--What is the largest prime factor of the number 600851475143 ?
{-
n = 775146 --sqrt 600851475143 

primes = sieve [2..n]

sieve :: [Int] -> [Int]
sieve [] = []
sieve (x:xs) = x : sieve [ y | y <- xs, y `mod` x /= 0 ]

answer = last primes

--come back later, you don't need all primes; generate factors then check if they're prime or not
-}

factors n = [ x | x <- [2..778146], n `mod` x == 0]

isPrime :: Int -> Bool
isPrime n = if (length (factors n)) == 1 then True else False

showAnswer = filter (isPrime) $ factors 600851475143 
