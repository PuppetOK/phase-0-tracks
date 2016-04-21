# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

“iNvEsTiGaTiOn”.gsub /..?/, &:capitalize
# => “InVeStIgAtIoN”

 “zom”.insert(2,'0')
# => “zoom”

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
# => 122 
# ascii decimal binary hex conversion

“How many times does the letter ‘a’ appear in this string?”.count('a')
#=> 4