class Array

  def sum_of_numeric_elements
    self
    .select {|element| (element.class == Fixnum) || (element.class == Float) }
    .inject(&:+)
  end

  def product_of_numeric_elements
    self
    .select {|element| (element.class == Fixnum) || (element.class == Float) }
    .inject(&:*)
  end

  def even_numeric_elements
    self
    .select {|element| element.class == Fixnum }
    .select(&:even?)
  end

  def odd_numeric_elements
    self
      .select {|element| element.class == Fixnum }
      .select(&:odd?)
  end

  def string_elements
    self
      .select {|element| element.class == String }
  end

  def lowercase_string_elements_as_uppercase
    self
      .select {|element| element.class == String }
      .select {|element| element[0].match(/[a-z]/) }
      .map {|element| element[0].upcase + element.slice(1..element.length)}
  end

  def capitalized_elements
    self
      .select {|element| element.class == String }
      .select {|element| element[0].match(/[A-Z]/) }
  end

end
