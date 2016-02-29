#IN-CLASS - THURS FEB 25
#game similar to hangman - cat loses z if wrong guess
#game over shows cat leaving

class WordGuess
  attr_accessor :guessed_letters, :letter, :answer, :underscores, :num, :good,
  :cat_message, :sleepy_cat, :bike_cat, :words

  def initialize
    @words = ["loon", "unicorn", "baboon", "ocelot", "dachshund", "penguin",
      "cuttlefish","greyhound", "meerkat", "rhinoceros", "giraffe", "slug",
      "zonkey", "narwhal", "opossum", "emu", "wombat", "duck"].shuffle
    @guessed_letters = [""]
    @letter = letter
    @answer = @words[0]
    @underscores = underscores
    @num = 0
    @cat_message = cat_message
    @sleepy_cat = sleepy_cat
    @bike_cat = bike_cat
  end

  def if_statement
    if @answer.delete(" ") == @underscores.join('').delete(' ')
    puts "You won!"
    exit
    else
      false
    end
  end

  def intro
    puts "Welcome to our game! Try to solve the word by guessing letters.
    Once sleepy cat wakes up (loses Zs), the game is over!\n\n"
    "word: #{underscores}\n"
  end

  def cat_message
    cat_message = ["\nWrong letter.. Don't wake sleep cat!\n\n",
      "\nLetter does not exist! Sleepy cat is less sleepy.\n\n",
      "\nGuess again! Sleepy cat is stirring.\n\n",
      "\nNot even close. Sleepy cat is about to wake up.\n\n",
      "\nNo more guesses. Sleepy cat has decided to bike away.\n\n"]
  end

  def sleepy_cat
    sleepy_cat = [
    "     Z",
    "       Z",
    "         Z",
    "           Z",
    "             Z",
    "                  |\\     _,,,---,,_
                   /,`.-'`'    -.  ;-;;,_
                  |,4-  ) )-,_..;\\  ( `'-'
                 '---''(_/--'  `-'\\_)
                 " ]

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

  def new_letter
    # prompt for very first letter guess
    print "Enter a letter: "
    @letter = gets.chomp
    puts
  end

  def words_and_guessed
    print "word: #{@underscores.join(' ')}\n"
    print "guessed letters: #{@guessed_letters.join (' ')}\n\n"
  end

  def try_again
    print "Please try again. Enter a letter: "
    @letter = gets.chomp
  end

  def letter_check
    # check to see if it's a letter
    while true
      if @letter[/[a-zA-Z]+/] == @letter && @letter.length == 1
        # check to see if it's ONE @letter
          if @guessed_letters.include? @letter
            try_again
            # break
          else
            # places guessed @letters into an array
            @guessed_letters.push(@letter)
            # puts @guessed_letters
            # drop_z
            break
          end
        else
          try_again
          # break
        end
    end
  end

  def underscores
    @underscores = []
    (0..(@answer.length-1)).each do
       @underscores = @underscores.push("_ ")
    end
    @underscores.join(' ')
  end

  def replace_underscores
    @answer.length.times do |x|
      if @letter == @answer[x]
        @underscores[x] = "#{@letter} "
        #@valid_under[0][x] = "#{@letter}"
      end
    end
  end

  def drop_z
    #take away a Z from the cat
    unless @answer.include? @letter
      # user enters a letter - > z
      # automatically gets pushed into guessed_letters
      if @guessed_letters[0..@guessed_letters.length-2].include? @letter
      else
        @num += 1
        puts @cat_message[@num-1]
        puts @sleepy_cat[@num..@sleepy_cat.length]
      end
    end
    if @num == 5
      puts @bike_cat
      puts ":( You failed. You don't get to see the answer. Please try again!"
      exit
    end
  end

end

# entering into our game class
game = WordGuess.new

game.intro

#1 display sleepy cat
puts game.sleepy_cat
# game.words_and_guessed
#  puts game.if_statement

until game.if_statement == true
  game.words_and_guessed

  #3 prompt for letter
  game.new_letter

  #4 checks to see if letter is a SINGLE CHARACTER UNUSED letter
  game.letter_check

  #5 if letter is part of answer, replace the underscore with letter
  game.replace_underscores

  # puts game.
  game.if_statement

  #6 if NOT part of answer, drop a Z
  game.drop_z

end
