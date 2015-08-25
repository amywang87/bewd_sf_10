#STATE
#define the class
#determine what attributes you want on that class
#ability to create instances of class
#ability to get values and set values
#


#BEHAVIOR
#defined by class methods, instance method, private method
#an instance method defines a specific behavior that only an instance of the class has access to
#an instance method provides an instance of a class access to behavior (example, created robot, have behavior fly, can do robot.fly)
#class method cannot be accessed by an instance of the class.
  #it is a method that provides a behavior that is beneficial to the overall class.
  #it can be accessed or called outside of the class. It cannot be accessed by instance of a class
  #primarily starts with self.name_of_class. That is how you can distinguish it from a normal instance method.
  #an instance method never has self.name_of_class.
  #a class method is usually used when you need to have access to behavior that does not involve one instance of your class (example: need to create 100 robots or need to find all robots that are a certain model.)
  #robot.new is an example of a class method - it creates a new instance of robot and works for the greater good of the class

#initialize connects to a method called new that allows you to instantiate Classes
#attributes are not determined by attr_accessor

#instance values are available within the universe of the class


require 'pry'

class Person

#attr_reader :name, :age, :home_town #(I will allow you to read all of the attributes, attr_reader creates getter methods for all attributes defined)
#attr_writer :name, :age #if we want people to only be able to change name and age. Attr_writer creates setters
attr_accessor :name, :age, :home_town #its attr_reader plus attr_writer capabilities in one.


  def initialize(name, age, home_town)
    @name = name
    @age = age
    @home = home_town
  end
end

  #attr_reader
  #def name
    #@name
  #end

  #attr_writer
  #def name=value
    #@name=value
  #end

binding.pry
Brad = Person.new("Brad", 50, "New Orleans")
