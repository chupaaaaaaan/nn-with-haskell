module Main where

import Graphics.Gnuplot.Simple
-- import qualified Graphics.Gnuplot.Terminal.X11 as X11
import qualified Graphics.Gnuplot.Terminal.PostScript as PS

main :: IO ()
main = do
  let xs = (linearScale 1000 (0,2*pi)) :: [Double]
      ys = fmap sin xs
      points = zip xs ys
  -- plotPath [(terminal $ X11.cons)] points
  plotPath [(terminal $ PS.cons "/home/ubuntu/temp.eps")] points
