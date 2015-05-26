toDigitsRev    :: Integer -> [Integer]
toDigitsRev 0 = []
toDigitsRev n
  | n < 0 = []
toDigitsRev n = n `mod` 10 : toDigitsRev (n `div` 10)

toDigits    :: Integer -> [Integer]
toDigits n = reverse (toDigitsRev n)
