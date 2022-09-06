require './nameable'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = rand
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if is_of_age? || @parent_permission
  end

  def of_age?
    return false unless @age >= 18

    true
  end

  def correct_name
    @name
  end

  private :of_age?
  attr_reader :id
  attr_accessor :name, :age
end

### Tests

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
puts capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
puts capitalizedTrimmedPerson.correct_name
