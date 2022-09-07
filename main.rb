#!/usr/bin/env ruby
require './app'

def options
  print "\nPlease choose an option by entering a number \n\n"
  print "1 - List all books \n"
  print "2 - List all people \n"
  print "3 - Create a person (teacher or student) \n"
  print "4 - Create a book \n"
  print "5 - Create a rental \n"
  print "6 - List all rentals for a person \n"
  print "7 - Quit \n"
  user_input = gets.chomp.to_i
end

def interraction(app)
  user_input = options
  if user_input == 1
    app.list_books
    interraction(app)
  elsif user_input == 2
    app.list_people
    interraction(app)
  elsif user_input == 3
    app.create_person
    interraction(app)
  elsif user_input == 4
    app.create_book
    interraction(app)
  elsif user_input == 5
    app.create_rental
    interraction(app)
  elsif user_input == 6
    app.list_rentals
    interraction(app)
  elsif user_input == 7
    return
  else
    puts "No option for #{user_input}"
    interraction(app)
  end
end

def main
  app = App.new
  interraction(app)
end

main
