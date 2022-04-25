# Класс Книга
class Book < Product

    def initialize(params)
        super  
    end
   
    def arr
        @array_book = {names: @names, price: @price, amount: @amount, genre: @genre, author: @author}
    end
    
    def to_strings
        @array_book.each_with_index do |array, number|
            puts "Книга \" #{array[:names]} \", #{array[:genre]}, автор - #{array[:author]}, #{array[:price]} руб. (осталось - #{array[:amount]}) "
        end
    end
end