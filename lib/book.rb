# Класс Книга
class Book < Product

    def initialize(params)
        super
        @book
        @books  
    end
   
    def arr
        @array_book = {names: @names, price: @price, amount: @amount, genre: @genre, author: @author}
    end
    
    def to_strings
        @file_path = File.dirname(__FILE__) 
        @file = File.new(@file_path + "/book.txt", "a:UTF-8")
        @book = "Название книги: #{@array_book[:names]} -- жанр: #{@array_book[:genre]} -- автор: #{@array_book[:author]} -- цена: #{@array_book[:price]} - осталось(#{@array_book[:amount]})"
        @file.puts(@book)
        @file.close
    end
    def printed_file
        @file_path = File.dirname(__FILE__)
        @file = File.new(@file_path + "/book.txt", "r:UTF-8")
        lines = @file.readlines
        @file.close 
        @books = []
        lines.each do |line|
                @books << line
        end
        puts @books
    end
end