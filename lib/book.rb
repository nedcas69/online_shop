# Класс Книга
class Book < Product

    def initialize(params)
        super  
    end
   
    def arr
        @array_book = [{names: @names, price: @price, amount: @amount, genre: @genre, author: @author}]
    end
    
    def to_strings
        @array_book.each_with_index do |keys, number|
        #     puts "Книга \" #{arrays[:names].to_s} \", #{arrays[:genre].to_s}, автор - #{arrays[:author].to_s},
        #      #{arrays[:price].to_s} руб. (осталось - #{arrays[:amount].to_s}) "
        # end

            puts "Название Книги => #{keys[:names]}"
            puts "Жанр => #{keys[:genre]}"
            puts "Автор => #{keys[:author]}"
            puts "Цена => #{keys[:price]}"
            puts "Количества => #{keys[:amount]}"
        end
    end
end