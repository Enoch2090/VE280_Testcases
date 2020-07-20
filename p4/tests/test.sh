#!/bin/bash
# test.sh

chmod +x test_all.sh
./test_all.sh > myout
diff myout sampleout