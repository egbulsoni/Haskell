import Data.Fixed (E0)
condAnd :: Bool -> Bool -> Bool
condAnd x y = if x
                 then if y
                         then True
                         else False
                         else False

condAndImpr :: Bool -> Bool -> Bool
condAndImpr x y = if x then y else False

mult :: Int -> Int -> Int -> Int
mult x y z = x * y * z

multLambda :: Int -> Int -> Int -> Int
multLambda = \x y z -> x * y * z

luhnDouble :: Int -> Int
luhnDouble x = if y > 9
                  then y - 9
                    else y
                      where y = x * 2 

luhn :: Int -> Int -> Int -> Int -> Bool
luhn w x y z = s `mod` 10 == 0 
          where s = luhnDouble w + x + luhnDouble y + z
