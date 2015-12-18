class Employee
  # needs name and salary
  attr_accessor :name, :salary

  def name=(name)
    if name == ""
      raise "Name cant be empty mister"
    else
      # instance vars start with @
      @name = name
    end
  end

  def salary=(salary)
    if !salary or salary < 0
      raise "Salary cant be #{salary} mister"
    else
      @salary = salary
    end
  end

  def print_pay_stub
    puts "Name : #{@name}"
    @pay_per_period = (@salary.to_f / 365) * 14
    puts "Salary : #{@pay_per_period}"
  end
end

emp1 = Employee.new
emp1.name = "Sarah"
emp1.salary = 100000
puts emp1.print_pay_stub

emp2 = Employee.new
puts emp2.print_pay_stub