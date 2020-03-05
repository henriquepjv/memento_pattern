require './memento.rb'

class ConcreteMemento < Memento
  def initialize(color, headlight, wheel)
    @color = color
    @headlight = headlight
    @wheel = wheel
    @date = Time.now.strftime('%F %T')
  end

  # The Originator uses this method when restoring its setup.
  attr_reader :color, :headlight, :wheel, :date

  # The rest of the methods are used by the Caretaker to display metadata.
  def name
    "#{@date} / color: #{@color}, headlight: #{@headlight}, wheel: #{@wheel}"
  end
end
