class Palindrome

  attr_reader :first_word, :second_word

  def initialize(first_word, second_word)
    @first_word = first_word.downcase
    @second_word = second_word.downcase
  end

  def is_palindrome?
    first_word == second_word.reverse ? true : false
  end

end
