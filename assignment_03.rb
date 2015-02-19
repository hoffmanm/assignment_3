#Matthew Hoffman
#CS270
#Assignment 3

########################
# Book class goes here,
# before Library class
########################
class Book

# read-only for title, author
	attr_reader :title, :author
# read/write checked-out	
	attr_accessor :checked_out
	
# constructor : initializes a book with a passed title, author, and 
# 	defaults checked out to false
# parameters: title, author
# return value: n/a
	def initialize(title_of_book, author_of_book)
		@title = title_of_book
		@author = author_of_book
		@checked_out = false
	end
	
end


# Library: manages Books as an array
# public methods: add, checkout, which_out?
# instance variables: @books (Array)

class Library
# constructor: initializes an empty array
# parameters: n/a
# return value: n/a
	def initialize
		@books = Array.new
	end

# add: shifts a Book onto the @books Array
# parameters: a Book
# return value: n/a
	def add(b)
		@books << b
	end
	
# checkout: sets the checked_out flag to true for a Book
# parameters: a Book
# return value: n/a
	def checkout(b)
		@books.each do |book|
			book.checked_out = true if book.title == b
		end
	end

# which_out?: prints out a list of Books that are checked out
# parameters: n/a
# return value: n/a
	def which_out?
		@books.each do |book|
			puts book.title if book.checked_out
		end
	end
end

# initialize a new Library
lib = Library.new

# create some Books
book1 = Book.new("The Wind in the Willows", "Kenneth Grahame")
book2 = Book.new("The Hobbit", "J. R. R. Tolkien")
book3 = Book.new("Clear Waters Rising", "Nicholas Crane")

# add those Books to the Library
lib.add(book1)
lib.add(book2)
lib.add(book3)

# checkout a couple Books by title
lib.checkout("The Hobbit")
lib.checkout("The Wind in the Willows")

# list which Books are out
lib.which_out?