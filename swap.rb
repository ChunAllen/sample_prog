class Swap

  attr_reader :collection, :first_number, :second_number

  def initialize(first_number, second_number)
    @first_number = first_number
    @second_number = second_number
  end

  def run
    swap(first_number, second_number)
  end

  private

  def swap(first_number, second_number)
    first_number, second_number = second_number, first_number

    puts "First Number is now #{first_number}"
    puts "Second Number is now #{second_number}"
  end

end
