require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "devid", last_name: "Vira", hourly_rate: 40)
@store1.employees.create(first_name: "john", last_name: "william", hourly_rate: 50)
@store2.employees.create(first_name: "will", last_name: "liam", hourly_rate: 50)
@store2.employees.create(first_name: "smith", last_name: "bill", hourly_rate: 50)
@store2.employees.create(first_name: "johnson", last_name: "williard", hourly_rate: 50)
