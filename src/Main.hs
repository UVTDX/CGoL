import Data.Array
import System.Random (randomRIO)

-- imagining our utopia
universe :: Array (Int, Int) Int
universe = array ((1,1), (30,30)) [((row, col), 0) | row <- [1..30], col <- [1..30]]

-- crafting the lands
spawn :: Array (Int, Int) Int -> IO ()
spawn arr = mapM_ putStrLn [show [arr ! (row, col) | col <- [1..30]] | row <- [1..30]]

-- randomly set alive points
randomLifeForm :: Array (Int, Int) Int -> IO (Array (Int, Int) Int)
randomLifeForm arr = do
  indices <- mapM (\_ -> (,) <$> randomRIO (1, 30) <*> randomRIO (1, 30)) [1..100]
  let arr' = arr // [(idx, 1) | idx <- indices]
  return arr'

main :: IO ()
main = do
  putStr "\ESC[2J" -- clearing the canvas
  initialUniverse <- randomLifeForm universe
  spawn initialUniverse

-- check if a point is alive
-- return set of living neighbors
-- kill function
-- spawn the next generation

