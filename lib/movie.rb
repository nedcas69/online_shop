# Класс Фильм
class Movie < Product

    def initialize(params)
        super
        @movie
        @movies_array
    end
    def arr
        @array_movie = {title: @title, price: @price, amount: @amount, years: @years, rejissor: @rejissor}
    end
    
    def to_strings
        @file_path = File.dirname(__FILE__)
        @file = File.new(@file_path + "/data/movie.txt", "a:UTF-8")
        @movie = "Название фильма : #{@array_movie[:title]} -- год выпуска: #{@array_movie[:years]} -- режиссер: #{@array_movie[:rejissor]} -- цена: #{@array_movie[:price]} - осталось(#{@array_movie[:amount]})"
        # @movie = "Название фильма : #{@title} -- год выпуска: #{@years} -- режиссер: #{@rejissor} -- цена: #{@price} - осталось(#{@amount})"
        @file.puts(@movie)
        @file.close
        # puts @movie
    end
    def printed_file # для вывода сохраненного файла на экран
        @file_path = File.dirname(__FILE__)
        @file = File.new(@file_path + "/data/movie.txt", "r:UTF-8")
        lines = @file.readlines
        @file.close 
        @movies_array = []
        lines.each do|line|
                @movies_array << line
        end
        puts @movies_array
    end
end