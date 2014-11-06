# Basic enumeration on collection objects (hash, array)

# This is NOT the Enumberable module.
# The name is close, but this is just us writing implementation of all of the enumerable methods in actions
class MyEnumeration

  # Do not modify the intialize
  def initialize(collection)
    @collection = collection
  end


  # Refer to: all?
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-all-3F
  def all_words_long_than_length?(min_length)
  end


  # For the next 3 methods refer to: collect or map
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-any-3F
  def contains_a_word_longer_than?(min_length)
  end

  def capitalize_words
  end

  def square_numbers
  end

  # Use symbol to proc notation on this one!
  def reverse_words
  end


  # Refer to collect_concat or flat_map
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-flat_map
  def positive_and_negative_numbers
  end

  # Refer to count
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-count
  def number_elements_in_collection
  end

  def instances_of_numerics
  end

  # Refer to detect or find
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-detect
  def find_first_awesome_person
  end


  # Do not modify the private methods
  private
  def collection
    @collection
  end

end
