LinguaNatural-Soundex-mp1

Os algoritmos ditos fonéticos têm como objectivo associar uma única representação (chave) a palavras que soam de modo semelhante. O Soundex (Odell e Russel, 1922) e o Mataphone (Lawrence Philips, 1990) são exemplos deste tipo de algoritmos.

Defina UM transdutor, usando outros transdutores mais pequenos, que implemente o seguinte algoritmo fonético: 

1º passo
S → Z se entre vogais (ex: asa → aza)
X → Z se precedido de "E" (que está no início de palavra) e seguido de uma vogal (ex: exame →
ezame)
X → S se precedido de "E" (que está no início de palavra) e seguido de uma consoante (ex: extra → estra)

2º passo
CH → X 
LH → 2 
NH → 3 
RR → 4 
SS → S

3º passo
R → 4 H →∅
(ex: acho → axo) (ex: galho → ga2o) (ex: ganho → ga3o) (ex: carro → ca4o) (ex: massa → masa)
se no início da palavra (ex: rato → 4ato) (ex:hoje→oje)
Q→K Z →S C→ S
K G→ J K
X → KS
(ex: quanto → kuanto) senofimdapalavra(ex:paz→pas)
se seguido de "E" ou "I" (ex: celofane → selofane) caso contrário (ex: calar → kalar)
se seguido de "E" ou "I" (ex: gelo → jelo)
caso contrário (ex: galo → kalo)
se no fim da palavra (ex: xerox → xeroks)

4º passo:
Elimina todas as vogais que não se encontram no início da palavra (ex: aleluia→ all).


Deverá ter em conta que:
O transdutor que implementa o algoritmo fonético deverá processar uma palavra de cada vez e não uma sequência de palavras;
O transdutor final deve ser construído usando pelo menos um transdutor por cada passo do algoritmo (4 passos);
Dentro de cada passo é irrelevante a ordem pela qual as regras são aplicadas;
Não serão considerados diacríticos (" ́", "`", "~", "^", cedilha);
A entrada e a saída só devem conter minúsculas;
O ficheiro "syms.txt" contém os símbolos a manipular pelos transdutores e não pode ser alterado.