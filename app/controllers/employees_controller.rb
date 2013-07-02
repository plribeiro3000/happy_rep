class EmployeesController < AuthorizedController
  def index
    @employees = EmployeesService.advanced_search(params[:name], params[:date])
  end
end