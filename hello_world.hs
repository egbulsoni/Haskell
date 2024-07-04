double x = x + x
n = a `div` length xs
        where
                a = 10
                xs = [1..5]

last' (x:xs) = if null xs
                then x
                else last' xs

init' xs = take (length xs - 1) xs

add :: (Int, Int) -> Int
add (x,y) = x+y

zeroto :: Int -> [Int]
zeroto n = [0..n]

add' :: Int -> (Int -> Int)
add' x y = x+y

add2 :: Int -> Int -> Int
add2 x y = x+y

checkTrue :: Bool -> Bool -> Bool
checkTrue b c
    | b == c = b
    | otherwise = False

