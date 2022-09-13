class CreatePerson
  def initialize(people)
    @people = people
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
      studentObj = {
        "Name":new_student.name, 
        "Age":new_student.age, 
        "Classroom":new_student.classroom, 
        "ID":new_student.id,
        "Person":new_student.class,
        "Rentals":[]
      }
      @people << studentObj

      File.open("people.json", "w+") do |file|
        person = JSON.dump(@people)
        file.write(person)
      end
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
      teacherObj = {
        "Name":new_teacher.name, 
        "Age":new_teacher.age, 
        "Specialization":new_teacher.specialization, 
        "ID":new_teacher.id,
        "Person":new_teacher.class,
        "Rentals":[]
      }
      @people << teacherObj

      File.open("people.json", "w+") do |file|
        person = JSON.dump(@people)
        file.write(person)
      end
      @people << teacherObj
      puts " #{new_teacher.name} added successfully"
    when 3
      nil
    else
      puts ' Wrong input option'
      create_person
    end
  end
end
