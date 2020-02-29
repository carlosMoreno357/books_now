# frozen_string_literal: true

require 'rest-client'
require 'json'
require 'csv'
module BooksNow
  class Books
    @book_response
    attr_reader :book_response
    def look_for(isbn)
      @book_response = RestClient::Request.new(
        method: :get,
        url: 'https://openlibrary.org/api/books?bibkeys=ISBN:' + isbn,
        verify_ssl: false
      ).execute
      @book_response = @book_response.split('=')[1].split(';')[0]
      @book_response = JSON.parse(@book_response)
      @book_response.to_s
    end

    def get_csv
      CSV.open('books.csv', 'wb') { |csv| @book_response.to_a.each { |token| csv << token } }
    end
  end
end
