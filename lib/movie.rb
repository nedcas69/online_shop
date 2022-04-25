# Класс Фильм
class Movie < Product

    def initialize(params)
        super
    end
    def arr
        @array_movie = {names: @names, price: @price, amount: @amount, years: @years, rejissor: @rejissor}
    end
    
    def to_strings
        @array_movie.each_with_index do |array_movie, number|
            puts "Фильм \" #{array_movie[:names]} \", #{array_movie[:years]} год, Режиссёр - #{array_movie[:rejissor]}, #{array_movie[:price]} руб. (осталось - #{array_movie[:amount]}) "
        end
    end
end