require './employee'

class HourlyEmployee < Employee

  attr_accessor :hours_worked
  attr_reader :wages

  def initialize(name, wages = 0.0, hours_worked)
    super(name)
    puts "New hourly employee created"
    self.wages = wages.to_f
    self.hours_worked = hours_worked
  end

  def wages=(wages)
    if wages == nil or wages < 0
      raise "Salary cant be #{wages} mister"
    else
      # convert to float
      @wages = wages.to_f
    end
  end

  def hours_worked=(hours_worked)
    if hours_worked == nil or hours_worked < 0
      raise "Hours cant be #{hours_worked} mister"
    else
      # convert to float
      @hours_worked = hours_worked.to_f
    end
  end

  def print_pay_stub
    # inherited
    print_name
    @pay_per_period = (@wages * @hours_worked) * 2
    printf("Salary : %0.2f\n", @pay_per_period)
  end

  # lets create some factory methods
  def self.cashier(name)
    return HourlyEmployee.new(name, 10.0, 40.0)
  end

  def self.clerk(name)
    return HourlyEmployee.new(name, 12.0, 20.0)
  end

  def self.intern(name)
    return HourlyEmployee.new(name, 18.0, 20.0)
  end

end
