require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

stu1 = Student.new("Adam")
stu2 = Student.new("Corey")

ins1 = Instructor.new("Meg")
ins2 = Instructor.new("Steven")

test1 = BoatingTest.new("Adam", "Test1", "Megan", "Failed")
# test2 = BoatingTest.new("Corey", "Test2", "Vera")
test3 = BoatingTest.new("Adam", "Test2", "Steven", "Passed")
test4 = BoatingTest.new("Adam", "Test3", "Steven", "Passed")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

