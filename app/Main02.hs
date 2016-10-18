module Main where

import Perceptron

main :: IO ()
main = do
  putStrLn "AND"
  putStrLn $ show $ p_and $ v00
  putStrLn $ show $ p_and $ v01
  putStrLn $ show $ p_and $ v10
  putStrLn $ show $ p_and $ v11

  putStrLn "NAND"
  putStrLn $ show $ p_nand $ v00
  putStrLn $ show $ p_nand $ v01
  putStrLn $ show $ p_nand $ v10
  putStrLn $ show $ p_nand $ v11

  putStrLn "OR"
  putStrLn $ show $ p_or $ v00
  putStrLn $ show $ p_or $ v01
  putStrLn $ show $ p_or $ v10
  putStrLn $ show $ p_or $ v11

  putStrLn "XOR"
  putStrLn $ show $ p_xor $ v00
  putStrLn $ show $ p_xor $ v01
  putStrLn $ show $ p_xor $ v10
  putStrLn $ show $ p_xor $ v11

