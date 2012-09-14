# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[{:name => 'admin', :description => 'Super user'},
 {:name => 'manager', :description => 'Manager'},
 {:name => 'employee', :description => 'Employee'}].each do |x|
  Role.find_or_create_by_name_and_description(x[:name].strip, x[:description].strip)
end
 
