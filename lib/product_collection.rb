class ProductCollection < Product
    def initialize
        super
        @book_array = []
        @movie_array = []
        @lines_book = 0
        @lines_movie = 0
    end
    
    def from_dir
        @file_read_movie = File.new(@file_path + "/data/movie.txt", "r:UTF-8")
        @file_read_book = File.new(@file_path + "/data/book.txt", "r:UTF-8") 
        @file_read_movie.close
        @file_read_book.close 
        @lines_movie = @file_read_movie.readlines
        @lines_book = @file_read_book.readlines
        
    end
    
    def to_a
        
       
        @collection_array = []
        @lines_book.each do|line|
                @book_array << line
        end
        puts @book_array
        @lines_movie.each do|line|
                @movie_array << line
        end
        puts @movie_array
    end

    def sort
        
    end
end