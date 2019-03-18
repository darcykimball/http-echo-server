-- Provides the echo service.

{-# LANGUAGE OverloadedStrings #-}
module Echo (
    echoApp
  ) where


import Network.HTTP.Types.Status (ok200)
import Network.HTTP.Types.Header (hContentType)
import Network.Wai (Application, responseLBS, strictRequestBody)


echoApp :: Application
echoApp req respond = do
  body <- strictRequestBody req
  respond (responseLBS ok200 headers (preface <> body))
  where
    preface = "You sent:\n"
    headers = [
        (hContentType, "text/plain")
      ]
