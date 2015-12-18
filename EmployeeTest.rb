require './salaried_employee'
require './hourly_employee'

emp2 = SalariedEmployee.new("Sai", 100000)
puts emp2.print_pay_stub

emp2 = HourlyEmployee.new("Sai", 48, 40)
puts emp2.print_pay_stub

emp2 = HourlyEmployee.intern("Sai")
puts emp2.print_pay_stub

emp2 = HourlyEmployee.clerk("ppp")
puts emp2.print_pay_stub

