require './book'
require './student'
require './teacher'
require './rental'

class App
  attr_accessor :books, :students, :teachers, :rentals

  def initialize
    @books = []
    @students = []
    @teachers = []
    @rentals = []
  end

  def list_books
    @books
  end

  def list_rentals
    @rentals
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
      @students.push(new_student)
      print @students
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

  def create_book
    p "Enter book title"
    title = gets.chomp
    p "Enter author"
    author = gets.chomp
    new_book = Book.new(title, author)
    @books << new_book
    puts "#{new_book} added successfully"
  end

  def create_rental
    puts "Enter date"
    date = gets.chomp
    puts "Enter book"
    book = gets.chomp
    puts "Enter person"
    person = gets.chomp
    new_rental = Rental.new(date, book, person)
    @rentals << new_rental
    puts "#{new_rental} added successfully"
  end
end
