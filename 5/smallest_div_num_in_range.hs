-- This is a very bad solution
showAnswer = head $ filter (isDiv 20) trimmedRange

isDiv y x 
  | y == 10         = True
  | x `mod` y == 0 = isDiv (y-1) x
  | otherwise      = False 

trimmedRange = [19,38..]

--I didn't know about lcm
showAnswer' = foldr1 lcm [1..20]
