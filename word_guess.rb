#IN-CLASS - THURS FEB 25
#game similar to hangman - cat loses z if wrong guess
#game over shows cat leaving

# FLOW CHART
# array of words .sample
# picks random word from array
# do loop to show "WORD : _ _ _ _ _ _ "
# user input = ""
# puts "You have already guessed: =>[letters]"
# accept user guess input
# evaluate user input
  #-> is it a letter? A-Za-z (if NOT try again -loop)
  #-> has it already been used?
    #-> push all guessed letters in an array
    #-> if correct letter, show "WORD: _ _ X _ _"
    #-> if wrong letter, remove Z from sleeping cat


class WordGuess

end

puts "
  Z
    Z
      Z      |\\     _,,,---,,_
        Z     /,`.-'`'    -.  ;-;;,_
          Z  |,4-  ) )-,_..;\\  ( `'-'
            '---''(_/--'  `-'\\_)
"

bike_cat = ['
                ________________
               |      GAME      |_____    __
               |     OVER!!!    |     |__|  |_________
               |________________|     |::|  |        /
  /\**/\       |                \.____|::|__|      <
  ( o_o  )_    |                      \::/  \._______\
  (u--u   \_)  |
   (||___   )==\
  ,dP"/b/=( /P"/b\
  |8 || 8\=== || 8
  `b,  ,P  `b,  ,P
    """`     """`  ']


sleepy_cat = [
"     Z",
"       Z",
"         Z",
"           Z",
"             Z",
"               |\\     _,,,---,,_
               /,`.-'`'    -.  ;-;;,_
              |,4-  ) )-,_..;\\  ( `'-'
             '---''(_/--'  `-'\\_)" ]

puts sleepy_cat
puts bike_cat
