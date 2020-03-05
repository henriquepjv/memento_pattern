# The Memento interface provides a way to retrieve the memento's metadata, such
# as creation date or name. However, it doesn't expose the Originator's state.
class Memento
  # @abstract
  #
  # @return [String]
  def name
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # @abstract
  #
  # @return [String]
  def date
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
