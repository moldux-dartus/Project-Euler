--factors n = [ x | x <- [2..n], n `mod` x == 0]
--
--isPrime :: Int -> Bool
--isPrime n = if (length (factors n)) == 1 then True else False
--
--showAnswer = last $ take 10001 $ filter isPrime [1..]
--
--I'm confident the above is correct, but it is too slow to be useful
---------------------------------
--primes = sieve [2..]
--
--sieve (p:xs) = p : sieve [ x | x <- xs, x `mod` p > 0 ]
--
--showAnswer' = primes !! 10000
--
--This is still very slow (40s)
---------------------------------
primes = 2 : filter (null . tail . primeFactors) [3,5..]

primeFactors n = factor n primes
  where
    factor n (p:ps) 
        | p*p > n        = [n]
        | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
        | otherwise      =     factor n ps

showAnswer'' = primes !! 10000

--I have no idea what the fuck is happening here
