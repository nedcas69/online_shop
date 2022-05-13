# Класс-родитель Товар, у которого есть цена и остаток на складе. От этого
# класса мы будем наследовать все другие товары.
class Product
    # У любого экземпляра класса Товар будут как минимум две переменные — цена
    # и количество единиц товара на складе
    attr_reader :price, :amount, :title, :years, :rejissor, :genre, :author, :array_movie, :array_book, 

    # Конструктор товара записывает, сколько стоит товар и сколько осталось
    def initialize(params)
      @array_movie = params[:array_movie]
      @array_book = params[:array_book]
      @price = params[:price]
      @amount = params[:amount]
      @title = params[:title]
      @years = params[:years]
      @rejissor = params[:rejissor]
      @genre = params[:genre]
      @author = params[:author]
      @file
      @file_path = File.dirname(__FILE__) 
      @file_read_movie
      @file_read_book
      @collection_array
      @lines
      @lines_book = 0
      @lines_movie = 0

    end
    def to_strings
      # Абстрактный метод
    end
    def arr
      
    end
    def printed_file
      puts "NotImplementedError"
    end
    # def price=(price)
    #   @price = price
    # end
    # def amount=(amount)
    #   @amount = amount
    # end
    # def title=(title)
    #   @title = title
    # end
    # def years=(years)
    #   @years = years
    # end
    # def rejissor=(rejissor)
    #   @rejissor = rejissor
    # end
    # def genre=(genre)
    #   @genre = genre
    # end
    # def author=(author)
    #   @author = author
    # end

end