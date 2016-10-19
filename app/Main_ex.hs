module Main where

import Graphics.Gnuplot.Simple


main :: IO ()
main = do
  let xs = (linearScale 1000 (0,2*pi)) :: [Double]
      ys = fmap sin xs
      points = zip xs ys
  plotPath [(Title "hello")] points
