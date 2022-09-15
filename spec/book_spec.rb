require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new('Maths book', 'Maths author')
  end

  it 'Should be a book object' do
    expect(@book).to be_an_instance_of(Book)
  end
  it "Should return the book's title" do
    expect(@book.title).to eq('Maths book')
  end
  it "Should return the book's author" do
    expect(@book.author).to eq('Maths author')
  end
end
