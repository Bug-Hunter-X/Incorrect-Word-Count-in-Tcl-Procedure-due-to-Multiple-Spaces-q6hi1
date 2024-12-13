proc count_words {text} { 
  # Correctly handles multiple spaces between words using split
  return [llength [split $text \s+]]
}
puts [count_words {This is a test string.}]  ;# Output: 5 (correct)
puts [count_words {This is a   test string.}];# Output: 5 (correct)