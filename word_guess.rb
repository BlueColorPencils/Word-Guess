#IN-CLASS - THURS FEB 25 #Look at line 62 tomorrow!
#game similar to hangman - cat loses z if wrong guess
#game over shows cat leaving

# FLOW CHART
# puts "Welcome to our game!"
# puts "Try to solve the word by guessing letters.
# Once the cat wakes up, the game is over."
#
# puts sleepy_cat
#
#
# print "Enter a letter: "
# letter = gets.chomp
# # array of words
# words = ["loon"] #"tiger", "lion", "bear", "jaguar"].shuffle
# # randomly selects a word (without repeats)
# answer = words.pop.split("")
# num = 0
# good = ""
# guessed_letters = [""]
#
# # prints word: _s that represents answer
# underscores = []
# answer.length.times do
#    underscores.push("_ ")
# end
# puts

# prompts user for letter

# new_game = WordGuess.new(cat)
  # TOMORROW ADD PROPER METHODS TO MAKE SEQUENCE OF GAME.
  # we should write our flow chart of how we want it to run

#until game is over
  # run methods in order we think should be done
#end
#game over
  #game.words_and_guessed

class WordGuess
  attr_accessor :guessed_letters, :letter, :answer, :underscores, :num, :good,
  :cat_message, :sleepy_cat

  def initialize
    @guessed_letters = ["b"]
    @letter = "z"
    @answer = ["c","a","t"]
    @underscores = ["_","_","_"]
    @num = 0
    @good = ""
    @cat_message = cat_message
    @sleepy_cat = sleepy_cat
    @bike_cat = bike_cat
  end

  def cat_message
    cat_message = ["Wrong letter.. Don't wake sleepy cat!", "Letter does not exist!"+
       " Sleepy cat is less sleepy.", "Guess again! Sleepy cat is stirring.", +
       "Not even close. Sleepy cat is about to wake up.", "No more guesses. "+
       "Sleepy cat has decided to bike away."]
  end

  def sleepy_cat
    sleepy_cat = [
    "     Z",
    "       Z",
    "         Z",
    "           Z",
    "             Z",
    "                |\\     _,,,---,,_
                   /,`.-'`'    -.  ;-;;,_
                  |,4-  ) )-,_..;\\  ( `'-'
                 '---''(_/--'  `-'\\_)" ]
  end

  def bike_cat
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
  end

  def words_and_guessed
    print "word: #{@underscores.join(' ')}\n"
    print "guessed letters: #{@guessed_letters.join(' ')}\n"
  end

  def try_again
    print "Please try again. Enter a letter: "
    @letter = gets.chomp
  end

  def letter_check
    # check to see if it's a letter
    until @good == "good"
      if @letter[/[a-zA-Z]+/]  == @letter
        # check to see if it's ONE @letter
        if @letter.length == 1
          if @guessed_letters.include? @letter
            try_again
          else
            @good = "good"
            # places guessed @letters into an array
            @guessed_letters.push(@letter)
          end
        else
          try_again
        end
      else
        try_again
      end
    end
  end

  def replace_underscores
    @answer.length.times do |x|
      if @letter == @answer[x]
        @underscores[x] = @letter
      end
    end
  end

  def drop_z
    #take away a Z from the cat
    unless @answer.include? @letter
      @num += 1
      puts @cat_message[@num]
      puts @sleepy_cat[@num..@sleepy_cat.length]
    end
  end


end

# @letter_index = answer.index(letter)
# underscores[letter_index] = letter
# print underscores
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
