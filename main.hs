-- clear screen
cls :: IO ()
cls = putStr "\ESC[2J"

-- entry point
main :: IO ()
main = do
	cls
	putStrLn "Testing"
