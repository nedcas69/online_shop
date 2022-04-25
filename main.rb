# Подключаем классы товара и классов-детей: книги и фильма
require_relative "lib/product"
require_relative "lib/book"
require_relative "lib/movie"

# Пока функционал у нас очень простой, но фильм мы создать уже можем. Создадим
# новый товар — книги за 190 рублей, и скажем, на складе их осталось 5 штук.

# puts "Вводите товары до слово \"end\""
# user_input = STDIN.gets.chomp
input = 0
while input != 'end'  do
puts "Выберите какой товар хотите добавить: 
1 - Книга
2 - Фильм"
input = STDIN.gets.chomp.to_i
    if input == 1
        puts "Введите название книги: "
        names = gets.chomp
        puts "Введите жанр: "
        genre = gets.chomp
        puts "Введите автор: "
        author = gets.chomp
        puts "Введите цену: "
        price = gets.chomp
        puts "Введите количество: "
        amount = gets.chomp
        book = Book.new(names: names, price: price, amount: amount, genre: genre, author: author)
        book.arr
    elsif input == 2
        puts "Введите название фильма: "
        names = gets.chomp
        puts "Введите год: "
        years = gets.chomp
        puts "Введите режиссёра: "
        rejissor = gets.chomp
        puts "Введите цену: "
        price = gets.chomp
        puts "Введите количество: "
        amount = gets.chomp
        movie = Movie.new(names: names, price: price, amount: amount, years: years, rejissor: rejissor)
        movie.arr

       
    else
        puts "Вы ввели неправильное значение."
         puts "Наши товары"
        book.to_strings
        movie.to_strings
    end
end

