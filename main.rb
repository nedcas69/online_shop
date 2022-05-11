# Подключаем классы товара и классов-детей: книги и фильма
require_relative "lib/product"
require_relative "lib/book"
require_relative "lib/movie"

# Пока функционал у нас очень простой, но фильм мы создать уже можем. Создадим
# новый товар — книги за 190 рублей, и скажем, на складе их осталось 5 штук.

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
        puts "Введите название книги: "
        names = gets.chomp.to_s
        puts "Введите жанр: "
        genre = gets.chomp.to_s
        puts "Введите автор: "
        author = gets.chomp.to_s
        puts "Введите цену: "
        price = gets.chomp.to_s
        puts "Введите количество: "
        amount = gets.chomp.to_s
        books = Book.new(names: names, price: price, amount: amount, genre: genre, author: author)
        books.arr
        books.to_strings
    elsif inputs == 2
        puts "Введите название фильма: "
        names = gets.chomp.to_s
        puts "Введите год: "
        years = gets.chomp.to_s
        puts "Введите режиссёра: "
        rejissor = gets.chomp.to_s
        puts "Введите цену: "
        price = gets.chomp.to_s
        puts "Введите количество: "
        amount = gets.chomp.to_s
        movies = Movie.new(names: names, price: price, amount: amount, years: years, rejissor: rejissor)
        movies.arr
        movies.to_strings
    elsif inputs == 3 
        puts "Наши товары"
        books.printed_file
        movies.printed_file
        break
    else
        puts "Неправильное значение!!!"
        product = Product.new
        product.printed_file
        break
    end
end

