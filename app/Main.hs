module Main where


import Network.Wai.Handler.Warp


import Echo


main :: IO ()
main = do
  putStrLn $ "Starting server on port " ++ show port
  run port echoApp
  where
    port = 3000
