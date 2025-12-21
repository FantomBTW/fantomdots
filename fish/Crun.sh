#!/bin/bash
a=$1
gcc $1 -lm -o zapuskayemoe && ./zapuskayemoe
rm zapuskayemoe
