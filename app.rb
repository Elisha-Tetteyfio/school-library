require './book.rb'

class App
  attr_accessor :books, :people

  def initialize
    @books = []
    @people = []
  end

  def list_books
    @books
  end

  def list_people
    @people
  end
end