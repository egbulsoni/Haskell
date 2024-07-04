import Text.XHtml (base)
import Control.Concurrent (yield)
halve :: [a] -> ([a],[a])
halve ls = if (even . length) ls
              then (a,b)
              else ([],[])
                where a = take (length ls `div` 2) ls
                      b = drop (length ls `div` 2) ls
-- using head and tail
thirdHT :: [a] -> a
thirdHT = head . tail . tail

-- using list indexing
thirdLI :: [a] -> a
thirdLI = (!! 2)

-- using pattern matching
thirdPM :: [a] -> a
thirdPM (x:y:z:xs) = z

-- boolean and
checkAnd :: Bool -> Bool -> Bool
checkAnd b c
    | b == c = b
    | otherwise = False

-- using conditional
safetailCond :: [a] -> [a]
safetailCond ls = if null (tail ls)
                     then []
                     else tail ls
-- using guards
safetailGuarded :: [a] -> [a]
safetailGuarded (x:xs)
                | null xs = []
                | otherwise = xs

-- using pattern matching
safetailPM :: [a] -> [a]
safetailPM (x:xs) = xs

orOp1 :: Bool -> Bool -> Bool
orOp1 True _ = True
orOp1 _ True = True
orOp1 _ _ = False

orOp2 :: Bool -> Bool -> Bool
orOp2 False False = False
orOp2 _ _ = True

orOp3 :: (Bool, Bool) -> Bool
orOp3 (False, False) = False
orOp3 (_,_) = True

orOp4 :: Bool -> Bool -> Bool
orOp4 x y
  | not x && not y = False
  | otherwise = True

