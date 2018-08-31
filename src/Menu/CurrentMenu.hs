    
module Menu.CurrentMenu where 

import System.IO
import OhmsLaw
import Text.Printf

currentMenu = do
    hSetBuffering stdout NoBuffering
    putStr "What is your voltage (V)? "
    v <- getLine
    putStr "What is your resistance (R)? "
    r <- getLine
    printf "%s %.2fA\n" ("I = V/R = " ++ v ++ "/" ++ r ++ " =") (current (read v :: Double) (read r :: Double))