#create a class
#set attributes - read and write capabilities
#build a constructor
#create an instance of a class

require 'pry'

class Robot
  #name, model, origin

  #creates getter && setter methods for each attribute
  attr_accessor :name, :type, :origin  #will learn on 8/19

  #this method creates new instances of the robot class
  #@instance_variable are available throughout the class.
  #@name is an instance variable
  def initialize(name, type, origin)
    #initialize creates the robots - think of this as a factory
    @name = name #"@" is an instance variable. These are not like local variables. local variables only exist within the method. instance variables can exist anywhere within the class
    @type = type #can change instance variable (exp: nana.type=somethingelse)
    @origin = origin
  end

  #want to make a certain amount of robots. Start with class method
  def self.make_robots(number)
  #method name that we would call to create new robot is robot.new
  #create new robot. Need to create a certain number of robots.
  #look at ruby docs - ruby docs integer - look through methods - times{|i|block}
    robots = number.to_i #.times only works on integers
    robots.times do
      Robot.random_robot_maker
      #robot = Robot.new("Robot1", "Robot2", "Robot3")
      #puts "#{robot.name} has been created"
    #puts "we need to make #{number_of_robots}"
    end
  end

  def self.random_robot_maker
    #first create some arrays below
    names = ["Robot1", "Robot2", "Robot3"]
    types = ["android", "super-android"]
    origins = ["sf", "fremont", "oakland", "union city"]

    #this is the method that will randomize arrays
    name = names.sample
    type = types.sample
    origin = origins.sample
    robot = Robot.new(name, type, origin)

    puts "Hello, I am #{name} of type #{type}. I was produced in #{origin}."
    puts "#{robot.flying_skills}"
    puts "#{robot.empathy}"
  end

#assume empathy is a skill that only androids can have
#laser fighting only super android
#flying skills are for both
  def empathy
    if origin == "fremont"
      puts "and I'm really sorry."
    else
      puts "and I don't care."
    end
  end

  #create instance method for flying skills
  #these methods are not contained within a class. these methods are now available to instances of robot
  def flying_skills
    if type == "super-android"
      puts "I can fly!"
    else
      puts "I can't fly."
    end
  end
  #puts "I am #{self.name}. I can fly!" #the #self.name (which can also be just #name) calls the name. self can always be called. Always the instance that is calling it.
  #within an instance variable "self" refers to an instance. the instance of robot that called this method.
  #"instance of robot" is an object that has its own state based off of the robot class blueprint that has access to all methods that are instnace in nature within robot

  def laser_fighting_skills
    puts "I am #{name}. I have laser fighting skills"
  end

end

#.new is the method that initilalizes or creates an instance
# nana = Robot.new("Nana", "Super-Android", "New Orleans")
#nana is now an instance of robot
# puts nana
# puts nana.flying_skills

#create 10 robots.
Robot.make_robots(10)

#clients wants robot factory.
#1. flying skills
#2. laser fighting
#3.
#4.

#instance methods are contained within a class - look like regular methods
#class methods are slightly different. class methods are methods that can be accessed outside of the class
#example of class method is robot.new The job of ".new" is to create an instance of robot
#we need class methods to perform functions that are outside of the scope of an instance...
#an instance of robots cannot create a factory of robots
#every class method starts with "self.". Example: if name of method is make_robots, then self.make_robots
