class Person
  def initialize(age, name = "Unknown", parent_permission = true)
    @id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if is_of_age? || @parent_permission
  end

  def is_of_age?
    return false unless @age >= 18
    true
  end

  private :is_of_age?
  attr_reader :id
  attr_accessor :name, :age
end
