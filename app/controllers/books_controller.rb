class BooksController < AuthorizedController
  def index
    @books = advanced_search(params[:name], params[:author])
  end
end