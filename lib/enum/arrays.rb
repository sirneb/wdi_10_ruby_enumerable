class Array

  def sum_of_numeric_elements
    self.keep_if {|i| [Float, Fixnum].include? i.class}.reduce(&:+)
  end

  def product_of_numeric_elements
    self.keep_if {|i| [Float, Fixnum].include? i.class}.reduce(&:*)
  end

  def even_numeric_elements
    self.keep_if {|i| Fixnum == i.class && i.even?}
  end

  def odd_numeric_elements
    self.keep_if {|i| Fixnum == i.class && i.odd?}
  end

  def string_elements
    self.keep_if {|i| String == i.class}
  end

  def lowercase_string_elements_as_uppercase
    self.keep_if {|i| String == i.class && i[0] =~ /[a-z]/}.map(&:capitalize)
  end

  def capitalized_elements
    self.keep_if {|i| String == i.class && i[0] =~ /[[:upper:]]/}
  end

end
