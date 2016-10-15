# LinguaNatural-Soundex-mp1

Os algoritmos ditos fonéticos têm como objectivo associar uma única representação (chave) a palavras que soam de modo semelhante. O Soundex (Odell e Russel, 1922) e o Mataphone (Lawrence Philips, 1990) são exemplos deste tipo de algoritmos.

Defina UM transdutor, usando outros transdutores mais pequenos, que implemente o seguinte algoritmo fonético: 

###1. passo
		S → Z se entre vogais (ex: asa → aza)
		X → Z se precedido de "E" (que está no início de palavra) e seguido de uma vogal (ex: exame → ezame) 
		X → S se precedido de "E" (que está no início de palavra) e seguido de uma consoante (ex: extra → estra)

###2. passo
		CH → X (ex: acho → axo)
		LH → 2 (ex: galho → ga2o)
		NH → 3 (ex: ganho → ga3o)
		RR → 4 (ex: carro → ca4o)
		SS → S (ex: massa → masa)

###3. passo
		R → 4 se no início da palavra (ex: rato → 4ato)
		H → ∅ (ex: hoje→oje)
		Q → K (ex: quanto → kuanto)
		Z → S se no fim da palavra (ex: paz → pas)
		C → S se seguido de "E" ou "I" (ex: celofane → selofane)
			K caso contrário (ex: calar → kalar)
		G → J se seguido de "E" ou "I" (ex: gelo → jelo)
			K caso contrário (ex: galo → kalo)
		X → KS se no fim da palavra (ex: xerox → xeroks)

###4. passo:
		Elimina todas as vogais que não se encontram no início da palavra (ex: aleluia→ all).


Deverá ter em conta que:
O transdutor que implementa o algoritmo fonético deverá processar uma palavra de cada vez e não uma sequência de palavras;
O transdutor final deve ser construído usando pelo menos um transdutor por cada passo do algoritmo (4 passos);
Dentro de cada passo é irrelevante a ordem pela qual as regras são aplicadas;
Não serão considerados diacríticos (" ́", "`", "~", "^", cedilha);
A entrada e a saída só devem conter minúsculas;
O ficheiro "syms.txt" contém os símbolos a manipular pelos transdutores e não pode ser alterado.
