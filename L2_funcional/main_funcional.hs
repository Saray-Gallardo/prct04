-- Escriba un programa en Haskell que calcule la media y desviacion tipica de tres listas de notas: PA101 [7.0, 8.0, 5.0, 9.0, 6.0, 8.5, 10.0], PA102 [6.0, 6.0, 7.5, 8.0, 7.0, 9.0, 5.5] y PRUEBA [10.0, 10.0, 10.0].

-- Funcion para calcular la media de una lista de notas
mean :: [Double] -> Double
mean xs = sum xs / fromIntegral (length xs)

-- Funcion para calcular la desviacion tipica de una lista de notas
stdDev :: [Double] -> Double
stdDev xs = sqrt (sum (map (\x -> (x - m) ^ 2) xs) / fromIntegral (length xs))
  where m = mean xs

-- Listas de notas para PA101, PA102 y PRUEBA
pa101 :: [Double]
pa101 = [7.0, 8.0, 5.0, 9.0, 6.0, 8.5, 10.0]

pa102 :: [Double]
pa102 = [6.0, 6.0, 7.5, 8.0, 7.0, 9.0, 5.5]

prueba :: [Double]
prueba = [10.0, 10.0, 10.0]

-- Funcion principal para calcular y mostrar la media y desviacion tipica de las listas de notas
main :: IO ()
main = do
  putStrLn "PA101:"
  putStrLn $ "Media: " ++ show (mean pa101)
  putStrLn $ "Desviacion tipica: " ++ show (stdDev pa101)
  putStrLn ""
  putStrLn "PA102:"
  putStrLn $ "Media: " ++ show (mean pa102)
  putStrLn $ "Desviacion tipica: " ++ show (stdDev pa102)
  putStrLn ""  
  putStrLn "PRUEBA:"
  putStrLn $ "Media: " ++ show (mean prueba)
  putStrLn $ "Desviacion tipica: " ++ show (stdDev prueba)  