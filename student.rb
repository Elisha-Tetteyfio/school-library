require './person'

class Student < Person
  def initialize(age, classroom)
    super(age)
    @classroom = classroom
  end

  def play_hooky
    return "¯\(ツ)/¯"
  end

end
