import Data.Array
import System.Random (randomRIO)

-- imagining our utopia
universe :: Array (Int, Int) Int
universe = array ((1,1), (30,30)) [((row, col), 0) | row <- [1..30], col <- [1..30]]


-- crafting the lands
spawn :: Array (Int, Int) Int -> IO ()
spawn arr = mapM_ putStrLn [show [arr ! (row, col) | col <- [1..30]] | row <- [1..30]]

main :: IO ()
main = do
  putStr "\ESC[2J" -- clearing the canvas
  spawn universe

-- randomly set alive points
-- check if a point is alive
-- return set of living neighbors
-- kill function
-- spawn the next generation

