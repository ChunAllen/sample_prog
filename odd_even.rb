class OddEven

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def run
    number % 2 == 0 ? 'Even' : 'Odd'
  end

end
