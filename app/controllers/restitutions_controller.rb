class RestitutionsController < AuthorizedController
  def index
    @restitutions = RestitutionsService.advanced_search(params[:item], params[:date])
  end
end