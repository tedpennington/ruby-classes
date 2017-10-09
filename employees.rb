=begin
Create a class that contains information about employees of a company and define methods to get/set employee name, 
job title, and start date.
=end

class Employee
  def initialize(employee_name)
    @employee_name = employee_name
  end

  attr_accessor :employee_name
  attr_accessor :title
  attr_accessor :start_date

end


# Copy this Company class into your module.


class Company
  
  def initialize(company_name)
    @company_name = company_name
    @employees = []
  end

  #Returns the name of the company
  def company_name
    @company_name
  end

  attr_accessor :employees


end

#Consider the concept of aggregation, and modify the Company class so that you assign employees to a company.

# Create a company, and three employees, and then assign the employees to the company.

bobs = Company.new("Bob's Bits N Pieces")

puts bobs.company_name

jim = Employee.new("jim")
jim.title = "chief do-nothing"
fred = Employee.new("fred")
john = Employee.new("john")

puts "jim employee: #{jim.employee_name}, #{jim.title}"

bobs.employees.push(jim, fred, john)
puts "bobs employees are: #{bobs.employees}"

