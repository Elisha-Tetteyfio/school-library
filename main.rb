#!/usr/bin/env ruby
require './app'

def options
  p "1. List all books"
  p "2. List all people"
  p "3. Create a person (teacher or student)"
  p "4. Create a book"
  p "5. Create a rental"
  p "6. List all rentals for a person"
  p "7. Quit"
  user_input = gets.chomp.to_i
end

def interraction(app)
  user_input = options
  if user_input == 1
    puts app.list_books
    interraction(app)
  elsif user_input == 2
    puts app.list_people
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
en

def main
  app = App.new
  interraction(app)
end

main