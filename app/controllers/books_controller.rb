class BooksController < AuthorizedController
  def index
    @books = BooksService.advanced_search(params[:name], params[:author])
  end
end