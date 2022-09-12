require './app'
require './createPerson'
require './createBook'
require './createRental'

def options
  print "\nPlease choose an option by entering a number \n\n"
  print "1 - List all books \n"
  print "2 - List all people \n"
  print "3 - Create a person (teacher or student) \n"
  print "4 - Create a book \n"
  print "5 - Create a rental \n"
  print "6 - List all rentals for a person \n"
  print "7 - Quit \n"
  gets.chomp.to_i
end

def interraction(app)
  user_input = options
  case user_input
  when 1
    app.list_books
    interraction(app)
  when 2
    app.list_people
    interraction(app)
  when 3
    CreatePerson.new(app.people).create_person
    interraction(app)
  when 4
    CreateBook.new(app.books).create_book
    interraction(app)
  when 5
    CreateRental.new(app.rentals, app.books, app.people).create_rental
    interraction(app)
  when 6
    app.list_rentals
    interraction(app)
  end
end

def main
  app = App.new
  interraction(app)
end

main
