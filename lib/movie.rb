# Класс Фильм
class Movie < Product

    def initialize(params)
        super
    end
    def arr
        @array_movie = [{names: @names, price: @price, amount: @amount, years: @years, rejissor: @rejissor}]
    end
    
    def to_strings
        @array_movie.each_with_index do |keys, number|
            puts "Название фильма => #{keys[:names]}"
            puts "Год выпуска => #{keys[:years]}"
            puts "Режиссер => #{keys[:rejissor]}"
            puts "Цена => #{keys[:price]}"
            puts "Количества => #{keys[:amount]}"
        end
        
        # @array_movie.each_with_index do |array_movie, number|
        #     puts "Фильм \" #{array_movie[:names].to_s} \", #{array_movie[:years].to_s} год, 
        #     \n\rРежиссёр - #{array_movie[:rejissor].to_s}, #{array_movie[:price].to_s} руб. 
        #     \n\r(осталось - #{array_movie[:amount].to_s}) "
        # end
    end
end