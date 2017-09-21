junta :: String -> [String] --"eu tu ele" e transforma em ["eu","tu","ele"] quem faz é o words ele quer que a gente faça essa função words
junta x = words x

separa :: [String]->String 
separa [] = []
separa (a:b) = tradutor a ++" "++ separa b

tradutor :: String -> String
tradutor ("eu") = "Ego"
tradutor ("tu") = "gay"
tradutor ("ele") = "la" 


principal :: String -> String
principal x = separa (junta x)

