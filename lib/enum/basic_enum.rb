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
    collection.all?{|element| element.length > min_length }
  end


  # For the next 3 methods refer to: collect or map
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-any-3F
  def contains_a_word_longer_than?(min_length)
    collection.any?{|element| element.length > min_length }
  end

  def capitalize_words
    collection.map{|element| element[0].upcase + element.slice(1..element.length)}
  end

  def square_numbers
    collection.map{|num| num * num }
  end

  # Use symbol to proc notation on this one!
  def reverse_words
    collection.map(&:reverse)
  end


  # Refer to collect_concat or flat_map
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-flat_map
  def positive_and_negative_numbers
    collection.flat_map { |element| [element.abs, -element.abs] }
  end



  # Refer to count
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-count
  def number_elements_in_collection
    collection.count
  end

  def instances_of_numerics
    collection.count {|element| (element.class == Fixnum || element.class == Float)}
  end

  # Refer to detect or find
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-detect
  def find_first_awesome_person
    collection.detect{|person| person[:awesome] }
  end


  private

  def collection
    @collection
  end

end
