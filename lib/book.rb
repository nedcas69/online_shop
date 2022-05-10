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
        # @array_book.each_with_index do |keys, number|
        #     puts "Книга \" #{arrays[:names].to_s} \", #{arrays[:genre].to_s}, автор - #{arrays[:author].to_s},
        #      #{arrays[:price].to_s} руб. (осталось - #{arrays[:amount].to_s}) "
        # end
        @file_path = File.dirname(__FILE__)
        @file = File.new(@file_path + "/book.txt", "a:UTF-8")
        @book = "Название Книги: #{@array_book[:names]} Жанр: #{@array_book[:genre]} Автор: #{@array_book[:author]} Цена: #{@array_book[:price]} Осталось(#{@array_book[:amount]})"
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