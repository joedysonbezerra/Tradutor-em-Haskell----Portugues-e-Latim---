import System.IO
import Data.Char(toUpper)


main :: IO()
main = do
       frase <- readFile "frase-traduzir.txt"
       writeFile "frase-traduzida.txt" (tradutor frase [] [])
       putStrLn "Frase Traduzida com Sucesso!"



tradutor :: String -> String -> String -> String
tradutor (' ':b)  c d = tradutor b (c ++ " " ++ dicionario d) []
tradutor ('\n':b) c d = tradutor b (c ++ " " ++ dicionario d) []
tradutor []       c d = c ++ " " ++ dicionario d
tradutor (a:b)    c d = tradutor b c (d ++ [a])



dicionario :: String -> String

-- Português -> Latim
dicionario "eu" = "ego"
dicionario "tu" = "vos"
dicionario "ele" = "quod"
dicionario "ela" = "quae"
dicionario "nos" = "nobis"
dicionario "vamos" = "abeamus"
dicionario "para" = "ut"
dicionario "sua" = "vestra"
dicionario "casa" = "domum"

-- Latim -> Português
dicionario "ego" = "eu"
dicionario "vos" = "tu"
dicionario "quod" = "ele"
dicionario "quae" = "ela"
dicionario "nobis" = "nos"
dicionario "abeamus" = "vamos"
dicionario "ut" = "para"
dicionario "vestra" = "sua"
dicionario "domum" = "casa"

-- palavra não reconhecida
dicionario x = x
