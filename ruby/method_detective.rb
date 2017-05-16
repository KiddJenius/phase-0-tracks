# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
=> “InVeStIgAtIoN”

"ThiS_IS_NecESsary".swapcase
=> "tHIs_is_nECesSARY"
---------------------------------------------------------------------

"zom".insert(2, 'o')
=> “zoom”
"cra-cra".insert(3, 'y')
=> "cray-cra"
---------------------------------------------------------------------
"enhance".center(15)
=> "    enhance    "
 --------------------------------------------------------------------

"Stop! You’re under arrest!".upcase
=> "STOP! YOU’RE UNDER ARREST!"
---------------------------------------------------------------------
"the usual".insert(-1, " suspects")
=> "the usual suspects"
---------------------------------------------------------------------
" suspects".insert(0, "the usual")
=> "the usual suspects"
---------------------------------------------------------------------
"The case of the disappearing last letter".chomp('r')
"The case of the disappearing last letter".chop
=> "The case of the disappearing last lette"
---------------------------------------------------------------------

"The mystery of the missing first letter".delete "T"
=> "he mystery of the missing first letter"
---------------------------------------------------------------------
"Elementary,    my   dear        Watson!".squeeze(" ")
=> "Elementary, my dear Watson!"
---------------------------------------------------------------------
"z".ord
=> 122 
(What is the significance of the number 122 in relation to the character z?)
#Actually my first thought was 122 is the ASCII of z, which is correct, but it also connects that z is the ordinal integer of 122.
---------------------------------------------------------------------
"How many times does the letter 'a' appear in this string?".count('a')
=> 4
----------------------------------------------------------------------