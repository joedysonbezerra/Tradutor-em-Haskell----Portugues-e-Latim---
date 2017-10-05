import System.IO
import Data.Char(toUpper)


main :: IO()
main = do
       frase <- readFile "frase-traduzir.txt"
       writeFile "frase-traduzida.txt" (tradutor frase [] [])



tradutor :: String -> String -> String -> String
tradutor (' ':b)  c d = tradutor b (c ++ " " ++ dicionario d) []
tradutor ('\n':b) c d = tradutor b (c ++ " " ++ dicionario d) []
tradutor []       c d = c ++ " " ++ dicionario d
tradutor (a:b)    c d = tradutor b c (d ++ [a])



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
dicionario ("primeiro") = "primus"  -- 11
dicionario ("justiça") = "iustitia"  -- 12
dicionario ("demais") = "etiam"  -- 13
dicionario ("coisas") = "supellectilem"  -- 14
dicionario ("senhor") = "dominus"  -- 15
dicionario ("mão") = "manibus"  -- 16
dicionario ("boa") = "bonum"  -- 17
dicionario ("não") = "non"  -- 18
dicionario ("sim") = "etiam"  -- 19
dicionario ("ajudo") = "auxilium"  -- 20
dicionario ("estudo") = "studium"  -- 21
dicionario ("efeito") = "modum"  -- 22
dicionario ("procura") = "demanda"  -- 23
dicionario ("analise") = "analysis"  -- 24
dicionario ("e") = "quod"  -- 25
dicionario ("enfermo") = "infirmu"  -- 26
dicionario ("estelionato") = "stellionatu"  -- 27
dicionario ("estilo") = "stilu"  -- 28
dicionario ("imbecil") = "imbecille"  -- 29
dicionario ("teoria") = "doctrina"  -- 30
dicionario ("valor") = "valorem"  -- 31
dicionario ("dados") = "notitia"  -- 32
dicionario ("pessoa") = "hominem"  -- 33
dicionario ("arvore") = "lignum"  -- 34
dicionario ("laranja") = "aurantiaco"  -- 35
dicionario ("renda") = "reditus"  -- 36
dicionario ("mercado") = "forum"  -- 37
dicionario ("maior") = "magis"  -- 38
dicionario ("politica") = "consilium"  -- 39
dicionario ("ataque") = "impetus"  -- 40
dicionario ("agua") = "aqua"  -- 41
dicionario ("corrupcao") = "corruptio"  -- 42
dicionario ("maça") = "malum"  -- 43
dicionario ("corda") = "funem"  -- 44
dicionario ("meia") = "metus"  -- 45
dicionario ("medico") = "medicus"  -- 46
dicionario ("terra") = "terra"  -- 47
dicionario ("crianca") = "puer"  -- 48
dicionario ("vinho") = "vinum"  -- 49
dicionario ("pao") = "panem"  -- 50


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
dicionario ("primus") = "primeiro"  -- 11
dicionario ("iustitia") = "justiça"  -- 12
dicionario ("etiam") = "demais"  -- 13
dicionario ("supellectilem") = "coisas"  -- 14
dicionario ("dominus") = "senhor"  -- 15
dicionario ("manibus") = "mão"  -- 16
dicionario ("bonum") = "boa"  -- 17
dicionario ("non") = "não"  -- 18
dicionario ("etiam") = "sim"  -- 19
dicionario ("auxilium") = "ajudo"  -- 20
dicionario ("estudo") = "studium"  -- 21
dicionario ("modum") = "efeito"  -- 22
dicionario ("demanda") = "procura"  -- 23
dicionario ("analysis") = "analise"  -- 24
dicionario ("quod") = "e"  -- 25
dicionario ("infirmu") = "enfermo"  -- 26
dicionario ("stellionatu") = "estelionato"  -- 27
dicionario ("stilu") = "estilo"  -- 28
dicionario ("imbecille") = "imbecil"  -- 29
dicionario ("teoria") = "doctrina"  -- 30
dicionario ("valorem") = "valor"  -- 31
dicionario ("notitia") = "dados"  -- 32
dicionario ("hominem") = "pessoa"  -- 33
dicionario ("lignum") = "arvore"  -- 34
dicionario ("aurantiaco") = "laranja"  -- 35
dicionario ("reditus") = "renda"  -- 36
dicionario ("forum") = "mercado"  -- 37
dicionario ("magis") = "maior"  -- 38
dicionario ("consilium") = "politica"  -- 39
dicionario ("impetus") = "ataque"  -- 40
dicionario ("aqua") = "agua"  -- 41
dicionario ("corruptio") = "corrupcao"  -- 42
dicionario ("malum") = "maça"  -- 43
dicionario ("funem") = "corda"  -- 44
dicionario ("metus") = "meia"  -- 45
dicionario ("medicus") = "medico"  -- 46
dicionario ("terra") = "terra"  -- 47
dicionario ("puer") = "crianca"  -- 48
dicionario ("vinum") = "vinho"  -- 49
dicionario ("panem") = "pao"  -- 50

-- palavra não reconhecida
dicionario x = x
