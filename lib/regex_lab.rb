def starts_with_a_vowel?(word)
    if word.match(/^[AEIOU]|^[aeiou]/)
      true
    else
      false
    end
  end
  #word_1 = "afoot"
  #word_2 = "chandoo"
  #starts_with_a_vowel?(word_2)
  
  def words_starting_with_un_and_ending_with_ing(text)
  #returns an array with the words starting with 'un' and ending with 'ing'
    text.scan(/un\w+ing/)
    #text.scan(/un\w+ing\b/)
  end
  
  
  #words_string = "unassuming ambiguous understanding pomp circumstance uninteresting uncompromising grouchy corollary"
  #words_starting_with_un_and_ending_with_ing(words_string)
  
  def words_five_letters_long(text)
    #returns an array of words that are five letters long
    return_array = text.split(" ")
    return_array.grep(/\b\w{5}\b/)
    #return_array.grep(/\b+\w{4}+\b/)
  end
  
  #words_string = "extreme briny crepe parking snaps grouping snafu round dog be fork spoon"
  
  #words_five_letters_long(words_string)
  
  def first_word_capitalized_and_ends_with_punctuation?(text)
    #Returns true for text starting with a capital letter and ending with puncutation
    first_letter = text.scan(/\w+/)[0]
    if (text.scan(/\./)) && (first_letter == first_letter.upcase)
      true
    else  
      false
    end
  end
  
  def first_word_capitalized_and_ends_with_punctuation_2?(text)
    if text.match(/^[A-Z]/) && text.match(/[\.]$/)
      true
    else 
      false
    end
  end
  
  
  #correct_punctuation = "I stepped on a Corn Flake, now I'm a cereal killer."
  #incorrect_punctuation = "i wondered why the baseball was getting bigger. Then it hit me."
  #first_word_capitalized_and_ends_with_punctuation_2?(correct_punctuation)
  
  def valid_phone_number?(phone)
    #phone.match(/([0-9] *?){10}|(\([0-9]{3}\)(([0-9]{3}-[0-9]{4})|[0-9]{7})\b)/) ? true : false
    #three OR statements
    #first: test to see if there are 9 numbers with an optional space 
    #second: create two capture groups
      #first capture group returns 3 numbers that are inside of parenthesis
      #second capture group checks for 3 numbers followed by a dash, follwed by four numbers
    #third: tests to see if there are 7 numbers in a row
    #does the \( mean - any parenthesis, in the same way that \s means any white space
    if phone.match(/([0-9] ?){10}/) || phone.match(/(\([0-9]{3}\)([0-9]{3}-[0-9]{4})\b)/) || phone.match(/\b([0-9]{7})\b/)
      true
    else
      false
    end
  end
  
  #valid_numbers = ["2438894546", "(718)891-1313", "234 435 9978", "(800)4261134"]
  #invalid_numbers = ["28894546", "(718)891-13135", "234 43 9978", "(800)IloveNY"]
  valid_number = "(800)IloveNY"
  
  valid_phone_number?(valid_number)
  
  