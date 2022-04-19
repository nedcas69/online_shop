# Подключаем классы товара и классов-детей: книги и фильма
require_relative "lib/product"
require_relative "lib/book"
require_relative "lib/movie"

# Пока функционал у нас очень простой, но фильм мы создать уже можем. Создадим
# новый товар — книги за 190 рублей, и скажем, на складе их осталось 5 штук.
hobbit = Book.new(price: 190, amount: 15)

# Просто чтобы не скучать выведем это в консоль
puts "Фильм Леон стоит #{hobbit.price} руб. в количестве #{hobbit.amount} шт."