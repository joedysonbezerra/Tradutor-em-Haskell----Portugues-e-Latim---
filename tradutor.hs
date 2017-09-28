dicionario :: String -> String

-- Português - Latim

dicionario ("eu") = "ego" -- 1
dicionario ("tu") = "vos" -- 2
dicionario ("ele") = "quod" -- 3
dicionario ("ela") = "quæ"  -- 4
dicionario ("nos") = "nobis"  -- 5
dicionario ("voce") = "vos"  -- 6
dicionario ("vamos") = "abeamus"  -- 7
dicionario ("para") = "ut"  -- 8
dicionario ("sua") = "vestra"  -- 9
dicionario ("casa") = "domum"  -- 10

-- Latim - Português

dicionario ("ego") = "eu" -- 1
dicionario ("vos") = "tu" -- 2
dicionario ("quod") = "ele" -- 3
dicionario ("quæ") = "ela"  -- 4
dicionario ("nobis") = "nos"  -- 5
dicionario ("vos") = "voce"  -- 6
dicionario ("abeamus") = "vamos"  -- 7
dicionario ("ut") = "para"  -- 8
dicionario ("vestra") = "sua"  -- 9
dicionario ("domum") = "casa"  -- 10
dicionario (x) = x

start :: String -> String
start x = tradutor x [] []


tradutor :: String -> String -> String -> String
tradutor (' ':b) c d = tradutor b (c ++ " " ++ dicionario d) []
tradutor []      c d = c ++ " " ++ dicionario d
tradutor (a:b)   c d = tradutor b c (d ++ [a])