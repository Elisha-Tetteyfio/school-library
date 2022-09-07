require './book'
require './student'
require './teacher'

class App
  attr_accessor :books, :people

  def initialize
    @books = []
    @students = []
    @teachers = []
  end

  def list_books
    @books
  end

  def list_people
    return @students, @teachers
  end

  def create_person
    p "Do you want to create a 1. Student  2. Teacher"
    user_input = gets.chomp.to_i
    
    if user_input == 1
      p "Enter age"
      age = gets.chomp.to_i
      p "Enter classroom"
      classroom = gets.chomp
      new_student = Student.new(age, classroom)
      @students << new_student
      puts "#{new_student} added successfully"
    elsif user_input == 2
      p "Enter age"
      age = gets.chomp.to_i
      p "Enter specialization"
      specialization = gets.chomp
      new_teacher = Teacher.new(age, specialization)
      @teachers << new_teacher
      puts "#{new_teacher} added successfully"
    else 
      puts "Wrong input option"
      self.create_person
    end
  end
end

pp = App.new
pp.create_person