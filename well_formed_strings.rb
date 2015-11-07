class Wfs
  def initialize(string)
    @string = string
  end

  def output
    @string
  end

  def paranthesis
    count_opener = 0
    count_closer = 0
    count_parens = @string.split!("")
    count_parens.each do |letter|
      if letter == "("
        count_opener += 1
      end
      if letter == ")"
        count_closer += 1
      end
      if count_closer == count_opener
        true
      else
        false
      end
    end
  end
end
