# Класс Фильм
class Movie < Product

    def initialize(params)
        super
        @movie = 0
        @movies_array = 0
    end
    def arr
        puts "Введите название фильма: "
        @title = gets.chomp.to_s
        puts "Введите год: "
        @years = gets.chomp.to_s
        puts "Введите режиссёра: "
        @rejissor = gets.chomp.to_s
        puts "Введите цену: "
        @price = gets.chomp.to_s
        puts "Введите количество: "
        @amount = gets.chomp.to_s
        @array_movie = {title: @title, price: @price, amount: @amount, years: @years, rejissor: @rejissor}
       
    end
    
    def to_strings
        @file = File.new(@file_path + "/data/movie.txt", "a:UTF-8")
        @movie = "Название фильма : #{@array_movie[:title]} |--| год выпуска: #{@array_movie[:years]} |--| режиссер: #{@array_movie[:rejissor]} |--| цена: #{@array_movie[:price]} - осталось(#{@array_movie[:amount]})"
        # @movie = "Название фильма : #{@title} -- год выпуска: #{@years} -- режиссер: #{@rejissor} -- цена: #{@price} - осталось(#{@amount})"
        @file.puts(@movie)
        @file.close
        # puts @movie
    end
    
    def printed_file # для вывода сохраненного файла на экран
        @file_read_movie = File.new(@file_path + "/data/movie.txt", "r:UTF-8")
        lines = @file_read_movie.readlines
        @movies_array = []
        lines.each do|line|
                @movies_array << line
        end
        puts @movies_array
    end
end