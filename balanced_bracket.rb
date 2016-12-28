class BalancedBracket

  attr_reader :string

  def initialize(string)
    @string = string
  end

  def run
    [")(){}", "[]({})", "([])", "{()[]}", "([)]"].each do |expression|
      puts balanced? expression
    end
  end

  def balanced?(string)
    return 0 if closer? string[0]
    stack = ['$']
    string.split('').each do |symbol|
      if opener? symbol
        stack.push symbol
        next
      end
      if closer? symbol
        stack.pop if closes? stack.last, symbol
        next
      end
    end
    return 1 if stack == ['$']
    0
  end

  def opener?(symbol)
    ['(', '[', '{'].include? symbol
  end

  def closer?(symbol)
    [')', ']', '}'].include? symbol
  end

  def closes?(opener, closer)
    return true if opener == '(' && closer == ')'
    return true if opener == '[' && closer == ']'
    return true if opener == '{' && closer == '}'
    false
  end

end
