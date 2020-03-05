require './concrete_car_memento.rb'
require './caretaker.rb'

class CarOriginator
  attr_accessor :color, :headlight, :wheel # works like java getters and setters

  def initialize(color, headlight, wheel)
    @color = color
    @headlight = headlight
    @wheel = wheel
    puts "Originator: My initial setup is: color: #{@color}, headlight: #{@headlight}, wheel: #{@wheel}"
  end

  # The Originator's business logic may affect its internal setup. Therefore,
  # the client should backup the car attributes before launching methods of the business
  # logic via the save() method.
  def change_color(new_color)
    puts "Originator: I\'m changing the car color from #{color}."
    @color = new_color
    puts "Originator: and my color has changed to: #{@color}"
  end

  def change_headlight(new_headlight)
    puts "Originator: I\'m changing the car headlight from #{headlight}."
    @headlight = new_headlight
    puts "Originator: and my headlight has changed to: #{@headlight}"
  end

  def change_wheel(new_wheel)
    puts "Originator: I\'m changing the car wheels from #{wheel}."
    @wheel = new_wheel
    puts "Originator: and my wheels has changed to: #{@wheel}"
  end

  # Saves the current setup inside a memento.
  def save
    ::ConcreteMemento.new(color, headlight, wheel)
  end

  # Restores the Originator's setup from a memento object.
  def restore(memento)
    @color = memento.color
    @headlight = memento.headlight
    @wheel = memento.wheel
    puts "Originator: My setup has changed to: color: #{@color}, headlight: #{@headlight}, wheel: #{@wheel}"
  end
end
