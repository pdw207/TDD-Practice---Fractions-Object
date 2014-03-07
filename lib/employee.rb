
class Employee

  def initialize(hash)
    # @name = hash[:first_name] + hash[:last_name]
  end
end

CSV.foreach('../taxes.csv', headers: true ) do |trans|
   employee_list = Employeer.new(row)
end
