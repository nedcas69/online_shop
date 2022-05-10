# Подключаем классы товара и классов-детей: книги и фильма
require_relative "lib/product"
require_relative "lib/book"
require_relative "lib/movie"

# Пока функционал у нас очень простой, но фильм мы создать уже можем. Создадим
# новый товар — книги за 190 рублей, и скажем, на складе их осталось 5 штук.

# puts "Вводите товары до слово \"end\""
# user_input = STDIN.gets.chomp
inputs = 0
while inputs != 'end'  do
puts "Выберите какой товар хотите добавить: 
1 - Книга
2 - Фильм"
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
        book = Book.new(names: names, price: price, amount: amount, genre: genre, author: author)
        book.arr
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
        movie = Movie.new(names: names, price: price, amount: amount, years: years, rejissor: rejissor)
        movie.arr
    else
        puts "Наши товары"
        book.to_strings
        movie.to_strings
        break
    end
end

