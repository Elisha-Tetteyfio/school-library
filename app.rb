require './book.rb'

class App
  attr_reader :books

  def initialize
    @books = []
  end

  def list_books
    @books
  end
end