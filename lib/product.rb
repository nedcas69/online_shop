# Класс-родитель Товар, у которого есть цена и остаток на складе. От этого
# класса мы будем наследовать все другие товары.
class Product
    # У любого экземпляра класса Товар будут как минимум две переменные — цена
    # и количество единиц товара на складе
    attr_reader :price, :amount, :names, :years, :rejissor, :genre, :author, :array_movie, :array_book

    # Конструктор товара записывает, сколько стоит товар и сколько осталось
    def initialize(params)
      @array_movie = params[:array_movie]
      @array_book = params[:array_book]
      @price = params[:price]
      @amount = params[:amount]
      @names = params[:names]
      @years = params[:years]
      @rejissor = params[:rejissor]
      @genre = params[:genre]
      @author = params[:author]
      @file
      @file_path
    end
    def to_strings
      # Абстрактный метод
    end
    def arr
      
    end
    def printed_file
   
  end
end