# Joao Pinheiro 73302
# Tiago Simoes	73100
# MP1-ALAMEDA
# Grupo 29

#!/bin/bash

rm -f passo1.fst passo1.pdf passo2.fst passo2.pdf passo3.pdf passo3.fst passo4.pdf passo4.fst 
rm -f passo12.pdf passo12.fst passo123.pdf passo123.fst transdutorFinal.fst transdutorFinal.pdf
rm -f aluno1in.fst aluno1out.fst aluno2in.fst aluno2out.fst
rm -f aluno1in.pdf aluno1out.pdf aluno2in.pdf aluno2out.pdf

# Passo 1
fstcompile --isymbols=syms.txt --osymbols=syms.txt  passo1.txt | fstarcsort > passo1.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  --portrait passo1.fst | dot -Tpdf  > passo1.pdf

# Passo 2
fstcompile --isymbols=syms.txt --osymbols=syms.txt  passo2.txt | fstarcsort > passo2.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  --portrait passo2.fst | dot -Tpdf  > passo2.pdf

# Passo 3
fstcompile --isymbols=syms.txt --osymbols=syms.txt  passo3.txt | fstarcsort > passo3.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  --portrait passo3.fst | dot -Tpdf  > passo3.pdf

# Passo 4
fstcompile --isymbols=syms.txt --osymbols=syms.txt  passo4.txt | fstarcsort > passo4.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  --portrait passo4.fst | dot -Tpdf  > passo4.pdf


################### Tradutores de soundex ################
#
# Compila e gera a versão gráfica do transdutor que traduz letra a letra

# Teste Pinheiro
fstcompile --isymbols=syms.txt --osymbols=syms.txt  aluno1in.txt | fstarcsort > aluno1in.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  --portrait aluno1in.fst | dot -Tpdf  > aluno1in.pdf

# Teste Simoes
fstcompile --isymbols=syms.txt --osymbols=syms.txt  aluno2in.txt | fstarcsort > aluno2in.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  --portrait aluno2in.fst | dot -Tpdf  > aluno2in.pdf

fstcompose passo1.fst passo2.fst passo12.fst
fstcompose passo12.fst passo3.fst passo123.fst
fstcompose passo123.fst passo4.fst transdutorFinal.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt  --portrait transdutorFinal.fst | dot -Tpdf  > transdutorFinal.pdf
################### Testa os tradutores ################
#
# Compila e gera a versão gráfica do transdutor que traduz de portugues para soundex

# Teste Pinheiro
fstcompose aluno1in.fst transdutorFinal.fst > aluno1out.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  --portrait aluno1out.fst | dot -Tpdf > aluno1out.pdf

# Teste Simoes
fstcompose aluno2in.fst transdutorFinal.fst > aluno2out.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt  --portrait aluno2out.fst | dot -Tpdf > aluno2out.pdf