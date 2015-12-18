require './employee'

class SalariedEmployee < Employee
  attr_reader :salary

  def initialize(name, salary = 0.0)
    super(name)
    puts "New salaried employee created"
    # call the accessors from here :D
    # no need to repeat validation
    self.salary = salary.to_f
  end


  def salary=(salary)
    if salary == nil or salary < 0
      raise "Salary cant be #{salary} mister"
    else
      # convert to float
      @salary = salary.to_f
    end
  end


  def print_pay_stub
    # inherited
    print_name
    # could omit the @ here, and call the accessors instead
    # by default methods are checked first in self
    # NOTE: calling name or salary is a method! not a variable!
    @pay_per_period = (@salary / 365) * 14
    formatted_pay_stub = format("%0.2f", @pay_per_period)
    # looks equivalent :D
    #puts "Salary : #{formatted_pay_stub}"
    #puts format("Salary : %0.2f", @pay_per_period)
    printf("Salary : %0.2f\n", @pay_per_period)
  end

end
