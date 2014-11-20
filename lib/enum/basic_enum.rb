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
    collection.detect{|person| person[:awesome]}
  end

  # Refer to drop
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-drop
  def remove_first_three
    collection.drop(3)
  end

  # Refer to drop_while
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-drop_while
  def drop_until_its_hot
    collection.drop_while{|element| element != 'hot'}
  end


  # Refer to each_slice
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-each_slice
  # Tip: After .each_slice chain on .to_a to turn the returned Enumerator into an array
  def groups_of(num)
    collection.each_slice(num).to_a
  end


  # Refer to each_with_object
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-each_with_object
  # Tip: You'll have to do .each_with_object(Hash.new(0)) to create a hash to start with. Do not save the hash in a variable. You may use the incrementor method here.
  def element_frequency_count
    collection.each_with_object(Hash.new(0)) {|element, hash| hash[element] += 1 }
  end


  # Refer to find_all / select
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-find-all
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-select
  def elements_ending_in_er
    collection.select {|element| element[-2..-1] == 'er' }
  end


  # Refer to find_index
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-find-index
  def index_of_first_awesome_element
    collection.find_index {|element| element[:awesome] }
  end

  # Refer to group_by
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-group-by
  def group_elements_by_favorite_language
    collection.group_by {|element| element[:favorite_language]}
  end

  # Refer to inject
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-inject
  def sum_of_experiences
    collection.inject(0) {|sum, element| sum + element[:years_experience] }
  end

  # Refer to inject
  # http://ruby-doc.org/core-2.1.4/Enumerable.html#method-i-inject
  def longest_element
    collection.inject {|longest, element| longest[:name].length > element[:name].length ? longest : element }
  end

  private

  def collection
    @collection
  end

end
