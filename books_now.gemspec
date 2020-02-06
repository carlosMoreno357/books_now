Gem::Specification.new do |s|
  s.name = %q{books_now}
  s.authors = ["Carlos Moreno"]
  s.licenses = ["MIT"]
  s.version = "0.0.1"
  s.date = %q{2019-02-06}
  s.summary = %q{books_now retrieves books info, using it's ISBN. Shows an array representation with JSON data for each finding}
  s.files = [
    "lib/books_now.rb"
  ]
  s.require_paths = ["lib"]
  s.add_dependency 'rest-client'
  s.add_dependency 'json'
  s.add_dependency 'csv'
end
