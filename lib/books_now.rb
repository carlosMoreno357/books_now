require 'rest-client'
require 'json'
module BooksNow
  class Books
    @book_response
    attr_reader :book_response
    def look_for(isbn)
      @book_response = RestClient::Request.new(
	:method => :get,
	:url => 'https://openlibrary.org/api/books?bibkeys=ISBN:'+isbn,
	:verify_ssl => false
      ).execute
      #results = JSON.parse(response.to_str)
      return @book_response.to_s 
    end
  end
end
