class Book
  attr_accessor :title, :chapters
  def initialize(title)
    @title = title
    @chapters = []

  end

  def addchapter(newchapter)
    @chapters << newchapter
  end

  def bookchapters
    puts "#{@title}: My Awesome Book has #{@chapters.length} chapters:"
    if @chapters.length != 0
      1.upto(@chapters.length) {|x| puts "#{x}. #{@chapters[x-1]}"}
    end
  end
end

book = Book.new("My first book")
book.addchapter("Chapter1")
book.addchapter("Chapter2")
book.addchapter("Chapter3")
book.bookchapters
