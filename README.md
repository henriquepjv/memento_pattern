# Memento Pattern
Memento pattern example developed in Ruby

- How to run o irb:
  - irb -r ./car_originator.rb
```ruby
car = CarOriginator.new('blue', 'tuned', 'chrome')

caretaker = Caretaker.new(car)

car.change_color('yellow')
caretaker.backup

car.change_color('banana blue')
caretaker.originator = car

caretaker.backup
caretaker.undo
caretaker.undo
```
