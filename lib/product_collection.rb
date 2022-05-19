class ProductCollection < Product
    def initialize(params)
        super
        @book_array = []
        @movie_array = []

    end
    
    def from_dir
        
    end
    
    def to_a
        @file_read_movie = File.new(@file_path + "/data/movie.txt", "r:UTF-8")
        @file_read_book = File.new(@file_path + "/data/book.txt", "r:UTF-8") 
        @lines_movie = @file_read_movie.readlines
        @lines_book = @file_read_book.readlines
        @file_read_movie.close
        @file_read_book.close 
        @lines_book.each do|line|
                @book_array << line
        end
        
        @lines_movie.each do|line|
            @movie_array << line
        end
        @collection_array = @book_array + @movie_array
        puts @collection_array
    end

    def sort!(params)
        case params[:by]
          when :title
            @products.sort_by! {|product| product.title}
          when :price
            @products.sort_by! {|product| product.price}
          when :amount
            @products.sort_by! {|product| product.amount}
          end
          @products.reverse! if params[:order] == :asc
          self
      end
end