module NeuralA where

import Numeric.LinearAlgebra

x = vector [-5.0,-4.9..5.0]
y1 = cmap sigmoid x


sigmoid :: Double -> Double
sigmoid x = 1.0 / (1.0 + exp(-x))

step_func :: Double -> Double
step_func x
  | x > 0.0 = 1.0
  | otherwise = 0.0

relu :: Double -> Double
relu x
  | x > 0.0 = x
  | otherwise = 0.0

