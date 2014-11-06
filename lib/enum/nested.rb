# Don't modify the Person class
class Person
  attr_accessor :name, :age, :gender, :years_language_experience, :favorite_foods

  def initialize(name:, age:, gender:, years_language_experience:{}, favorite_foods:[])
    @name = name
    @age = age
    @gender = gender
    @years_language_experience = years_language_experience
    @favorite_foods = favorite_foods
  end
end


class People
  def initialize(people_array)
    @people = people_array
  end

  def ages_sum
    people.map(&:age).inject(:+)
  end

  def average_age
    ages_sum / people.size
  end

  def total_years_programming_experience_for_all_languages
    people
      .map(&:years_language_experience)
      .map(&:values)
      .flatten
      .inject(:+)
  end

  def favorite_food_frequency
    people
      .map(&:favorite_foods)
      .flatten
      .each_with_object(Hash.new(0)) { |food, frequency| frequency[food] += 1 }

    # Alternate solution functionally:
    people
      .map(&:favorite_foods)
      .flatten
      .reduce(Hash.new) { |food, count| food.update(count => food.fetch(count, 0) + 1) }
  end

  def total_combined_years_language_experience(language)
    people
      .map(&:years_language_experience)
      .map{|experience| experience[language] || 0 }
      .inject(:+)
  end

  def person_with_most_experience_in_language(language)
    # people
    # .map(&:years_language_experience)
    # .map{|experience| experience[language] || 0 }
    # .max

    people
      .inject(people[0].years_language_experience[language]) do |experience, max|
        experience > max ? experience : max
      end

  end

  private

  def people
    @people
  end

end
