require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
validates :first_name, presence: true
validates :last_name, presence: true
validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
validates :store, presence: true
validates :name , presence: true, length: {minimum: 3}
validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}

validates :must_cary_apreal

def must_cary_apreal
  unless mens_apparel || womens_apparel
    errors.add(:base, 'must include atleast one mens or womens apreals')
  end
end
belongs_to :store

puts "inter your name"
store_name = gets.chomp
new_store = Store.new(name: store_name)

if new_store.save
  puts "success"
else 
  puts "error:"
  new_store.errors.full_message.each do |message|
    puts message
  end
end

