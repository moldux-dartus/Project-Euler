--square x = x * x
--
--squareOfSum n = square $ sum [1..n]
--
--sumOfSquares n = sum $ map square [1..n]
--
--showAnswer = (squareOfSum 100) - sumOfSquares 100
--
--First try, ugly but don't care

showAnswer = squareOfSum - sumOfSquares
  where
    squareOfSum :: Int
    squareOfSum = (^2) $ sum [1..100]
    sumOfSquares :: Int
    sumOfSquares = sum $ map (^2) [1..100]

    
