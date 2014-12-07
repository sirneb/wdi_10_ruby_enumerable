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
    @people.reduce(0) {|memo, p| memo + p.age}
  end

  def average_age
    ages_sum / @people.count
  end

  def total_years_programming_experience_for_all_languages
    @people.reduce([]) { |memo, p| memo + p.years_language_experience.values }
           .reduce(&:+)
  end

  def favorite_food_frequency
    @people.reduce([]) { |memo, p| memo + p.favorite_foods }
           .each_with_object(Hash.new(0)) { |c, obj| obj[c] += 1 }
  end

  def total_combined_years_language_experience(language)
    @people.reject do |p|
      p.years_language_experience[language] == nil
    end
    .reduce([]) do |memo, p|
      memo << p.years_language_experience[language]
    end
    .reduce(&:+)
  end

  def person_with_most_experience_in_language(language)
    @people.reject do |p|
      p.years_language_experience[language] == nil
    end
    .reduce do |p1, p2|
      if p1.years_language_experience[language] > p2.years_language_experience[language]
        p1
      else
        p2
      end
    end
  end

  private

  def people
    @people
  end

end
