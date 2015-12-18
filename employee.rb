class Employee
  # needs name
  attr_reader :name

  def initialize(name = "Jane Doe")
    puts "New employee created"
    # call the accessors from here :D
    # no need to repeat validation
    self.name = name
  end

  def name=(name)
    if name == ""
      raise "Name cant be empty mister"
    else
      # instance vars start with @
      @name = name
    end
  end

  def print_name
    puts "Name : #{@name}"
  end

end

#emp1 = Employee.new
#emp1.name = "Sarah"
#emp1.salary = 100000
#puts emp1.print_pay_stub
