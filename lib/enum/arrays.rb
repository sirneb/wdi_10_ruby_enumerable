class ArrayLab
  def initialize(array=[])
    @array = array
  end

  def sum_of_numeric_elements
    array
    .select {|element| (element.class == Fixnum) || (element.class == Float) }
    .inject(&:+)
  end

  def product_of_numeric_elements
    array
    .select {|element| (element.class == Fixnum) || (element.class == Float) }
    .inject(&:+)
  end

  def even_numeric_elements
    self
  end

  def odd_numeric_elements
    self
  end

  def string_elements
    self
  end

  def uppercase_all_lowercase_string_elements
    self
  end

  def capitalized_elements
    self
  end

  private

  def array
    @array
  end

end
