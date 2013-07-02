module EmployeesService
  include Zertico::Service

  def self.advanced_search(name, date)
    Employee.by_name(name).by_admission_date(date)
  end
end