module BooksService
  include Zertico::Service

  def advanced_search(name, author)
    Book.by_name(name).by_author(author)
  end
end