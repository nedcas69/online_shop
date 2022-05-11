# Класс Книга
class Book < Product

    def initialize(params)
        super
        @book
        @books 
    end
   
    def arr
        
            @array_book = {title: @title, price: @price, amount: @amount, genre: @genre, author: @author}
        
    end
  
    def to_strings
        if @title != nil
            @file_path = File.dirname(__FILE__) 
            @file = File.new(@file_path + "/data/book.txt", "a:UTF-8")
            @book = "Название книги: #{@array_book[:title]} -- жанр: #{@array_book[:genre]} -- автор: #{@array_book[:author]} -- цена: #{@array_book[:price]} - осталось(#{@array_book[:amount]})"
            @file.puts(@book)
            @file.close
            # puts @book
        else
            @file_path = File.dirname(__FILE__) 
            @file = File.new(@file_path + "/data/book.txt", "a:UTF-8")
            @file.close
        end

    end
    def printed_file # для вывода сохраненного файла на экран
        @file_read = File.new(@file_path + "/data/book.txt", "r:UTF-8") 
        lines = @file_read.readlines
        @file_read.close 
        @books_array = []
        lines.each do |line|
                @books_array << line
        end
        puts @books_array
    end
end