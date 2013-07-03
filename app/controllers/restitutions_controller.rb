class RestitutionsController < AuthorizedController
  def index
    @restitutions = advanced_search(params[:item], params[:date])
  end
end