module Main where

import System.IO
import Text.Printf
import Control.Monad

import OhmsLaw
import Menu.ResistanceMenu
import Menu.VoltageMenu
import Menu.CurrentMenu

ohms_law :: String -> IO ()
ohms_law "r" = do
    resistanceMenu
ohms_law "v" = do
    voltageMenu
ohms_law "i" = do
    currentMenu
ohms_law "p" = do
    printf "Power is coming soon\n"
ohms_law _  = do
    printf "%s" "Unrecognised input, for example, press the 'r' key to calculate resistance...\n"

eleculator = do 
    opt <- getLine
    ohms_law opt

main :: IO ()
main = do
    putStrLn "\nWelcome to Eleculator!\nCalculate, compute and understand electrical circuits.\n\nMenu (type the letter to enter the program):\n\tOhms law:\n\t\tr - Calculate resistance\n\t\tv - Calculate voltage\n\t\ti - Calculate amps\n\t\tp - Calculate watts (power)"
    forever eleculator
