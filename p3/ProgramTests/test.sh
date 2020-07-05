#!/bin/bash
# test.sh
## PLEASE RENAME YOUR EXEC AS "blackjack".

mkdir myRES
./blackjack 30 30 counting> myRES/my30.out
./blackjack 100 10000 counting> myRES/my100-10000.out 
./blackjack 100 100 counting> myRES/my100.out
./blackjack 2000 2000 counting> myRES/my2000.out
./blackjack 3000 3000 counting> myRES/my3000.out
./blackjack 5000 5000 counting> myRES/my5000.out
./blackjack 10000 10000 counting > myRES/my10000.out

diff myRES/my30.out RES/30.out
diff myRES/my100-10000.out RES/100-10000.out
diff myRES/my100.out RES/100.out
diff myRES/my2000.out RES/2000.out
diff myRES/my3000.out RES/3000.out
diff myRES/my5000.out RES/5000.out
diff myRES/my10000.out RES/10000.out