# Класс Фильм
class Movie < Product

    def initialize(params)
        super
    end
    def arr
        @array_movie = {names: @names, price: @price, amount: @amount, years: @years, rejissor: @rejissor}
    end
    
    def to_strings
        @array_movie.each_pair {|key, value| 
            puts "#{:names} => #{@names}"
            puts "#{:years} => #{@years}"
            puts "#{:rejissor} => #{@rejissor}"
            puts "#{:price} => #{@price}"
            puts "#{:amount} => #{@amount}"
        
        }
        # @array_movie.each_with_index do |array_movie, number|
        #     puts "Фильм \" #{array_movie[:names].to_s} \", #{array_movie[:years].to_s} год, 
        #     \n\rРежиссёр - #{array_movie[:rejissor].to_s}, #{array_movie[:price].to_s} руб. 
        #     \n\r(осталось - #{array_movie[:amount].to_s}) "
        # end
    end
end