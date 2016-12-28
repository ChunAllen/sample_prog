class PrimeComposite

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def is_prime?
    return false if number <= 1
    max = Math.sqrt(number)
    (2..max).all? { |x| number % x != 0 }
  end

end
