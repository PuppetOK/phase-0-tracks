# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

<<<<<<< HEAD
<<<<<<< HEAD
# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

# "zom".<???>
# => “zoom”

# "enhance".<???>
# => "    enhance    "

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
#=> "the usual suspects"

# " suspects".<???>
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
=======
“iNvEsTiGaTiOn”.gsub /..?/, &:capitalize
# => “InVeStIgAtIoN”

 “zom”.insert(2,'0')
# => “zoom”

=======
“iNvEsTiGaTiOn”.gsub /..?/, &:capitalize
# => “InVeStIgAtIoN”

 “zom”.insert(2,'0')
# => “zoom”

>>>>>>> 57ca3476a6e6556052a757425ac47e7dcb964860
 “enhance”.center(20)
#=> “    enhance    ”

“Stop! You’re under arrest!”.upcase
# => “STOP! YOU’RE UNDER ARREST!”

 “the usual”.insert(-1, " suspects")
#=> “the usual suspects”

“ suspects”.insert(0, "the usual")
#=> “the usual suspects”

 “The case of the disappearing last letter”.chop
# => “The case of the disappearing last lette”

 “The mystery of the missing first letter”.slice(1..-1)
# => “he mystery of the missing first letter”

 “Elementary  ,    my   dear      Watson!”.squeeze
# => “Elementary, my dear Watson!”

“z”.ord
<<<<<<< HEAD
>>>>>>> added the methods for method_detective file
# => 122 
# ascii decimal binary hex conversion

<<<<<<< HEAD
# "How many times does the letter 'a' appear in this string?".<???>
# => 4
=======
“How many times does the letter ‘a’ appear in this string?”.count('a')
#=> 4
>>>>>>> added the methods for method_detective file
=======
# => 122 
# ascii decimal binary hex conversion

“How many times does the letter ‘a’ appear in this string?”.count('a')
#=> 4
>>>>>>> 57ca3476a6e6556052a757425ac47e7dcb964860
