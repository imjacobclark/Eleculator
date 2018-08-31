module Menu.VoltageMenu where 

import System.IO
import OhmsLaw
import Text.Printf

voltageMenu = do 
    hSetBuffering stdout NoBuffering
    putStr "What is your current (I)? "
    i <- getLine
    putStr "What is your resistance (R)? "
    r <- getLine
    printf "%s %.2fV\n" ("V = I*R = " ++ i ++ "*" ++ r ++ " =")  (voltage (read i :: Double) (read r :: Double))