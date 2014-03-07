require 'csv'
require_relative 'employee'


def get_employees(file)
  employee_list = []
  CSV.foreach(file, headers: true ) do |trans|
     employee_list << Employee.new(trans)
  end
  employee_list
end

# puts get_employees('../taxes.csv').inspect
