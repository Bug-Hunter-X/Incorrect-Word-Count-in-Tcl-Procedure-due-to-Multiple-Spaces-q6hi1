proc count_words {text} { 
  # Incorrectly handles multiple spaces between words
  regsub -all {\s+} $text { } text
  return [llength [split $text]]
}
puts [count_words {This is a test string.}]  ;# Output: 5 (incorrect)
puts [count_words {This is a   test string.}];# Output: 5 (incorrect)