class EmployeesController < AuthorizedController
  def index
    @employees = advanced_search(params[:name], params[:date])
  end
end