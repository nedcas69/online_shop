# Класс Фильм
class Movie < Product

    def initialize(params)
        super
        @movie
        @movies
    end
    def arr
        @array_movie = {names: @names, price: @price, amount: @amount, years: @years, rejissor: @rejissor}
    end
    
    def to_strings
        @file_path = File.dirname(__FILE__)
        @file = File.new(@file_path + "/movie.txt", "a:UTF-8")
        @movie = "Название Фильма : #{@array_movie[:names]} Год выпуска: #{@array_movie[:years]} Режиссер: #{@array_movie[:rejissor]} Цена: #{@array_movie[:price]} осталось(#{@array_movie[:amount]})"
        @file.puts(@movie)
        @file.close
        
        # @array_movie.each_with_index do |array_movie, number|
        #     puts "Фильм \" #{array_movie[:names].to_s} \", #{array_movie[:years].to_s} год, 
        #     \n\rРежиссёр - #{array_movie[:rejissor].to_s}, #{array_movie[:price].to_s} руб. 
        #     \n\r(осталось - #{array_movie[:amount].to_s}) "
        # end
    end
    def printed_file
        @file_path = File.dirname(__FILE__)
        @file = File.new(@file_path + "/movie.txt", "r:UTF-8")
        lines = @file.readlines
        @file.close 
        @movies = []
        lines.each do|line|
                @movies << line
        end
        puts @movies
    end
end