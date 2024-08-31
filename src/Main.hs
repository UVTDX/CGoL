--TO DO
--set random alive cells
--create neighbor functions
--create birth/death function

import Data.Array

universe :: Array (Int, Int) Int
universe = array ((1,1), (12,12)) [((row, col), 0) | row <- [1..12], col <- [1..12]]



spawn :: Array (Int, Int) Int -> IO ()
spawn arr = mapM_ putStrLn [show [arr ! (row, col) | col <- [1..12]] | row <- [1..12]]

main :: IO ()
main = do
	spawn universe
