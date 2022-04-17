pairs = zip [1..1000] $ map (^2) [1..1000]

triplets = [ (a,b,c) | a <- pairs, b <- pairs, c <- pairs, 
        (snd a) + (snd b) == snd c ]

findAnswer ((a,a2),(b,b2),(c,c2)) = if a + b + c == 1000 then True else False

desiredTriplet = head $ filter findAnswer triplets

showAnswer ((a,a2),(b,b2),(c,c2)) = a * b * c

--Gruesome and takes like 5 minutes

--wiki answer wtf
triplets' l = [[a,b,c] | m <- [2..limit],
                        n <- [1..(m-1)], 
                        let a = m^2 - n^2, 
                        let b = 2*m*n, 
                        let c = m^2 + n^2,
                        a+b+c==l]
    where limit = floor . sqrt . fromIntegral $ l

problem_9 = product . head . triplets' $ 1000
