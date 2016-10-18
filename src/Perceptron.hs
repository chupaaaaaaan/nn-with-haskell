module Perceptron where

import Numeric.LinearAlgebra

v00 = vector [0.0,0.0]
v01 = vector [0.0,1.0]
v10 = vector [1.0,0.0]
v11 = vector [1.0,1.0]

p_and :: Vector Double -> Double
p_and x
  | tmp <= 0.0 = 0.0
  | otherwise = 1.0
  where
    tmp = w <.> x + b
    b = -0.7
    w = vector [0.5,0.5]

p_nand :: Vector Double -> Double
p_nand x
  | tmp <= 0.0 = 0.0
  | otherwise = 1.0
  where
    tmp = w <.> x + b
    b = 0.7
    w = vector [-0.5,-0.5]

p_or :: Vector Double -> Double
p_or x
  | tmp <= 0.0 = 0.0
  | otherwise = 1.0
  where
    tmp = w <.> x + b
    b = -0.2
    w = vector [0.5,0.5]

p_xor :: Vector Double -> Double
p_xor x = p_and $ vector [s1,s2]
  where
    s1 = p_nand x
    s2 = p_or x
