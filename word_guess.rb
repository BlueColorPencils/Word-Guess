#IN-CLASS - THURS FEB 25
#game similar to hangman - cat loses z if wrong guess
#game over shows cat leaving

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

# FLOW CHART
puts "Welcome to our game!"
puts "Try to solve the word by guessing letters.
Once the cat wakes up, the game is over."

puts sleepy_cat

# array of words
words = ["loon"] #"tiger", "lion", "bear", "jaguar"].shuffle
# randomly selects a word (without repeats)
answer = words.pop.split("")
# prints word: _s that represents answer
underscores = []
answer.length.times do
   underscores.push("_ ")
end
puts

guessed_letters = [""]

print "word: #{underscores.join(' ')}\n"
print "guessed letters: #{guessed_letters.join(' ')}\n"
# prompts user for letter
print "Enter a letter: "
letter = gets.chomp
good = ""

# check to see if it's a letter
until good == "good"
  if letter[/[a-zA-Z]+/]  == letter
    # check to see if it's ONE letter
    if letter.length == 1
      if guessed_letters.include? letter
        print "Please try again. Enter a letter: "
        letter = gets.chomp
      else
        good = "good"
        # places guessed letters into an array
        guessed_letters.push(letter)
      end
    else
      print "Please try again. Enter a letter: "
      letter = gets.chomp
    end
  else
    print "Please try again. Enter a letter: "
    letter = gets.chomp
  end
end

answer.length.times do |x|
  if letter == answer[x]
    underscores[x] = letter
  end
end

print "word: #{underscores.join(' ')}\n"
print "guessed letters: #{guessed_letters.join(' ')}\n"

# while answer.include? letter do
#     letter_index = answer.index(letter)
#   underscores[letter_index] = letter
#   print underscores
#   #take away a Z from the cat
# end

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
#turn answer into its own array?

# class WordGuess
#   def match letter
#     if letter
# end
