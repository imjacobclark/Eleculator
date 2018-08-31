module OhmsLaw where

resistance :: Double -> Double -> Double
resistance v i = v / i

voltage :: Double -> Double -> Double
voltage i r = i * r

current ::  Double -> Double -> Double
current v r = v / r