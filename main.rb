# Подключаем классы товара и классов-детей: книги и фильма
require_relative "lib/product"
require_relative "lib/book"
require_relative "lib/movie"
require_relative "lib/product_collection"


# Пока функционал у нас очень простой, но фильм мы создать уже можем. Создадим
# новый товар — книги за 190 рублей, и скажем, на складе их осталось 5 штук.


# product_collection = ProductCollection.new
# product_collection.to_a


# product_movie = Movie.new(title: 'Леон', rejissor: 'Люк Бессон', price: 990, amount: 25)
# product_book = Book.new(title: 'Леонa', author: 'Люкa Бессонa', price: 99099, amount: 14)
# product_movie.years = 1994
# product_book.genre = "Криминал"
# product_movie.to_strings
# product_book.to_strings
inputs = 0
while inputs != 'end'  do
puts "Выберите какой товар хотите добавить: 
1 - Книга
2 - Фильм
3 - Закончить и просмотреть товары"
inputs = STDIN.gets.chomp.to_i
    if inputs == 1
        
        books = Book.new(title: 0, price: 0, amount: 0, genre: 0, author: 0)
        books.arr
        books.to_strings
    elsif inputs == 2
      
        movies = Movie.new(title: 0, price: 0, amount: 0, years: 0, rejissor: 0)
        movies.arr
        movies.to_strings
    elsif inputs == 3 
        
        break
    else
        array_book = []
        array_movie = []
        puts "Неправильное значение!!!"
        product = Product.new(price: 0, amount: 0, title: 0, years: 0, rejissor: 0, genre: 0, author: 0, array_movie: 0, array_book: 0)
        product.printed_file
        break
    end
end
puts "Наши товары"

movies = Movie.new(title: 0, price: 0, amount: 0, years: 0, rejissor: 0)
books = Book.new(title: 0, price: 0, amount: 0, genre: 0, author: 0)

books.printed_file
movies.printed_file
