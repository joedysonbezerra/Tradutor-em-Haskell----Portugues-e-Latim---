stringParaLista :: String -> [String] --"eu tu ele" e transforma em ["eu","tu","ele"] quem faz é o words ele quer que a gente faça essa função words
stringParaLista x = words x

tradutor :: [String]->String 
tradutor [] = []
tradutor (a:b) = dicionario a ++" "++ tradutor b 

dicionario :: String -> String
dicionario ("eu") = "Ego"
dicionario ("tu") = "y"
dicionario ("ele") = "x" 
dicionario (x) = x

start :: String -> String
start x = tradutor (stringParaLista x)
