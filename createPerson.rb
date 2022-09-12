class CreatePerson
  def initialize(personArray)
    @personArray = personArray
  end

  def create_person
    print "Do you want to create: \n 1 - Student \n 2 - Teacher \n 3 - Cancel \n "
    user_input = gets.chomp.to_i

    case user_input
    when 1
      print ' Enter student age: '
      age = gets.chomp.to_i
      print ' Enter classroom: '
      classroom = gets.chomp
      print ' Enter name: '
      name = gets.chomp
      new_student = Student.new(age, classroom)
      new_student.name = name unless name.empty?
      @personArray << new_student
      puts " #{new_student.name} added successfully"
    when 2
      print ' Enter teacher age: '
      age = gets.chomp.to_i
      print ' Enter specialization: '
      specialization = gets.chomp
      print ' Enter name: '
      name = gets.chomp
      new_teacher = Teacher.new(age, specialization)
      new_teacher.name = name unless name.empty?
      @personArray << new_teacher
      puts " #{new_teacher.name} added successfully"
    when 3
      nil
    else
      puts ' Wrong input option'
      create_person
    end
  end
end