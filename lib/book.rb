# Класс Книга
class Book < Product

    def initialize(params)
        super
        @book = 0
        @books_array = 0 
    end
   
    def arr
        puts "Введите название книги: "
        @title = gets.chomp.to_s
        puts "Введите жанр: "
        @genre = gets.chomp.to_s
        puts "Введите автор: "
        @author = gets.chomp.to_s
        puts "Введите цену: "
        @price = gets.chomp.to_s
        puts "Введите количество: "
        @amount = gets.chomp.to_s    
        @array_book = {title: @title, price: @price, amount: @amount, genre: @genre, author: @author}
        
    end
  
    def to_strings
            @file = File.new(@file_path + "/data/book.txt", "a:UTF-8")
            @book = "Название книги: #{@array_book[:title]} |--| жанр: #{@array_book[:genre]} |--| автор: #{@array_book[:author]} |--| цена: #{@array_book[:price]} - осталось(#{@array_book[:amount]})"
            @file.puts(@book)
            @file.close
            # puts @book
    end
    def printed_file # для вывода сохраненного файла на экран
        @file_read_book = File.new(@file_path + "/data/book.txt", "r:UTF-8") 
        lines = @file_read_book.readlines
        @books_array = []
        lines.each do |line|
                @books_array << line
        end
        puts @books_array
    end
end