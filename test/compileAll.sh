#!/bin/bash
find . | grep -E '\.asm$' | grep -v 'pc.asm$' | xargs -L1 -I {} java -jar ../bf.jar -cdk {} 
