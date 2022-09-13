require 'json'
class CreateBook
  def initialize(book)
    @books = book
  end

  def create_book
    print "Create book \n"
    print ' Enter book title: '
    title = gets.chomp
    print ' Enter author name: '
    author = gets.chomp
    new_book = Book.new(title, author)
    @books << new_book

    File.open("book.json", "r+") do |file|
      books = JSON.dump(new_book)
      file.write(books)
    end

    puts " '#{new_book.title}' added successfully"
  end
end
