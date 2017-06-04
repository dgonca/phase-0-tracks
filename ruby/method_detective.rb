# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

"iNvEsTiGaTiOn".swapcase

# "zom".<???>
# => “zoom”

"zom".insert(2, 'o')

# "enhance".<???>
# => "    enhance    "

"enhance".center(20)

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

"Stop! You’re under arrest!".upcase 

# "the usual".<???>
#=> "the usual suspects"

"the usual".insert(9, " suspects")

# " suspects".<???>
# => "the usual suspects"

" suspects".insert(0, "the usual")

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

"The case of the disappearing last letter".chop

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

slicing = "The mystery of the missing first letter"
slicing.slice!(0)
p slicing 


# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

"Elementary,    my   dear        Watson!".squeeze(" ")


# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

"z".each_byte{|c| print c, ' '}

# "How many times does the letter 'a' appear in this string?".<???>
# => 4

"How many times does the letter 'a' appear in this string?".count('a')
