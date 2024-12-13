# Tcl Word Counting Bug

This repository demonstrates a common bug in Tcl code related to word counting. The `count_words` procedure incorrectly handles multiple spaces between words, leading to inaccurate word counts.

## Bug Description
The `count_words` procedure uses `regsub -all {\s+} $text { } text` to replace all sequences of one or more spaces with a single space.  However, this is insufficient when dealing with multiple spaces, as it only reduces multiple spaces to a single space.  This results in incorrect word counts.

## Bug Solution
The solution uses the `split` command with a more robust regular expression that accounts for one or more whitespace characters to correctly separate words, regardless of how many spaces are between them.