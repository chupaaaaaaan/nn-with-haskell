module Main where

import Graphics.Gnuplot.Simple
import qualified Graphics.Gnuplot.Terminal.WXT as WXT
import qualified Graphics.Gnuplot.Terminal.PostScript as PS


ops :: [Attribute]
-- ops = [(Custom "term" ["postscript", "eps", "enhanced", "color", "solid"])
--       ,(Custom "output" ["\"/home/ubuntu/temp.eps\""])
--       ]
-- ops = [(terminal $ WXT.persist WXT.cons)]
ops = [(EPS "/home/ubuntu/temp.eps")
      ]

  
main :: IO ()
main = do
  let xs = (linearScale 1000 (0,2*pi)) :: [Double]
      ys = fmap sin xs
      points = zip xs ys
  plotPath ops points
