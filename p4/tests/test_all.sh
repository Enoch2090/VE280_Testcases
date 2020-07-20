#!/bin/bash
# test_all.sh

#----------NODE TEST----------
echo '----------NODE TEST----------'
g++ -Wall -Werror -O2 -fsanitize=address  --std=c++17 -g test_functional/testNode.cpp binaryTree.cpp -o node -lm
./node
rm ./node
#----------TREE TEST----------
echo '----------TREE TEST----------'
g++ -Wall -Werror -O2 -fsanitize=address  --std=c++17 -g test_functional/testTree.cpp binaryTree.cpp -o tree -lm
./tree
rm ./tree

#----------COMPRESS TEST----------
echo '----------COMPRESS TEST----------'
g++ -Wall -Werror -O2 --std=c++17 -fsanitize=address -g compress.cpp huffmanTree.cpp binaryTree.cpp -o compress -lm
echo '--1--'
./compress test_compress/source1.txt
echo '--2--'
./compress test_compress/source2.txt
echo '--3--'
./compress test_compress/source3.txt
echo '--4--'
./compress test_compress/source4.txt
echo '--5--'
./compress test_compress/source5.txt
echo '--6--'
./compress test_compress/source6.txt
echo '--7--'
./compress test_compress/source7.txt
echo '--8--'
./compress test_compress/source8.txt
echo '--1, tree--'
./compress -tree test_compress/source1.txt
echo '--2, tree--'
./compress -tree test_compress/source2.txt
echo '--3, tree--'
./compress -tree test_compress/source3.txt
echo '--4, tree--'
./compress -tree test_compress/source4.txt
echo '--5, tree--'
./compress -tree test_compress/source5.txt
echo '--6, tree--'
./compress -tree test_compress/source6.txt
echo '--7, tree--'
./compress -tree test_compress/source7.txt
echo '--8, tree--'
./compress -tree test_compress/source8.txt
rm ./compress

#----------DECOMPRESS TEST----------
echo '----------DECOMPRESS TEST----------'
g++ -Wall -Werror -O2 --std=c++17 -fsanitize=address -g decompress.cpp huffmanTree.cpp binaryTree.cpp -o decompress -lm
echo '--1--'
./decompress test_compress/tree1 test_compress/source1.out
echo '--2--'
./decompress test_compress/tree2 test_compress/source2.out
echo '--3--'
./decompress test_compress/tree3 test_compress/source3.out
echo '--4--'
./decompress test_compress/tree4 test_compress/source4.out
echo '--5--'
./decompress test_compress/tree5 test_compress/source5.out
echo '--6--'
./decompress test_compress/tree6 test_compress/source6.out
echo '--7--'
./decompress test_compress/tree7 test_compress/source7.out
echo '--8--'
./decompress test_compress/tree8 test_compress/source8.out
rm ./decompress

