#!/bin/bash

cat ~/.conky/Rings/notes.txt | sed 's/^/					\${color #ddddff}×\$color /g'
