module OhmsLawSpec where
     
import Test.Hspec

import OhmsLaw

ohmsLawSpec = hspec $ do
    describe "Resistance" $ do
        it "should correctly calculate 5V/0.01A as 500ohms" $ do
            resistance 5 0.01 `shouldBe` 500
        it "should correctly calculate 5V/2A as 2.5ohms" $ do
            resistance 5 2 `shouldBe` 2.5
        it "should correctly calculate 5V/70A as 7.142857142857142e-2ohms" $ do
            resistance 5 70 `shouldBe` 7.142857142857142e-2
    describe "Current" $ do
        it "should correctly calculate 5V/100ohms as 0.05A" $ do
            current 5 100 `shouldBe` 0.05
        it "should correctly calculate 5V/1ohms as 5A" $ do
            current 5 1 `shouldBe` 5
        it "should correctly calculate 5V/1250ohms as 0.004A" $ do
            current 5 1250 `shouldBe` 0.004
    describe "Voltage" $ do
        it "should correctly calculate 100A*100ohms as 10000V" $ do
            voltage 100 100 `shouldBe` 10000
        it "should correctly calculate 5A*1ohms as 5V" $ do
            voltage 100 0.01 `shouldBe` 1
        it "should correctly calculate 125A*0.095ohms as 11.875V" $ do
            voltage 125 0.095 `shouldBe` 11.875