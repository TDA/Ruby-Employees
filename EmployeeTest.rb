require './salaried_employee'
require './hourly_employee'

emp2 = SalariedEmployee.new("Sai", 100000)
puts emp2.print_pay_stub

emp2 = HourlyEmployee.new("Sai", 21, 20)
puts emp2.print_pay_stub
