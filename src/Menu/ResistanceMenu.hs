module Menu.ResistanceMenu where 

import System.IO
import OhmsLaw
import Text.Printf

resistanceMenu = do 
    hSetBuffering stdout NoBuffering
    putStr "What is your current (I)? "
    i <- getLine
    putStr "What is your voltage (V)? "
    v <- getLine
    printf "%s %.2fΩ\n" ("R = V/I = " ++ i ++ "/" ++ v ++ " =") (resistance (read i :: Double) (read v :: Double))