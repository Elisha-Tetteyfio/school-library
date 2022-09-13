require 'json'
require './book'
require './student'
require './teacher'
require './rental'

class App
  attr_accessor :books, :rentals, :people

  def initialize
    @books = []
    @rentals = []
    @people = []
  end

  def list_books
    File.open("book.json", "r") do |file|
      books = JSON.parse(file.read) 
      books.each_with_index {|book, i| puts "(#{i}) Title: '#{book["Title"]}', Author: #{book["Author"]} "}
    end
  end

  def list_rentals
    puts 'Enter person ID: '
    user_input = gets.chomp.to_i
    user_rentals = []
    @rentals.each { |r| user_input == r.person.id ? user_rentals << r : '' }
    print "Rentals: \n"
    user_rentals.each { |r| print " Date: #{r.date}, Title: #{r.book.title}, Author: #{r.book.author}\n" }
  end

  def list_people
    @people.each { |s| print "[#{s.class}] Name: #{s.name}, ID: #{s.id}, Age: #{s.age}\n" }
  end
end
