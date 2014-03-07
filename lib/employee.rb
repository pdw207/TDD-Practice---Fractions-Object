
class Employee
	attr_reader :first_name, :last_name, :annual_income, :paid_tax, :tax_rate, :calc_tax

  def initialize(hash)
    @first_name = hash["first_name"]
    @last_name  = hash["last_name"]
    @annual_income = hash["annual_income"].to_i
    @paid_tax = hash["paid_tax"].to_i 
    @tax_rate = (hash["tax_rate"].to_f / 100)
  end

 	def calc_tax
 		(@annual_income * @tax_rate) - @paid_tax
 	end


end

# CSV.foreach('../taxes.csv', headers: true ) do |trans|
#    employee_list = Employeer.new(row)
# end
