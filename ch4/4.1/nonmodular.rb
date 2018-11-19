class Stack
  attr_reader :stack
  def initialize
    @stack = []
  end
  def add_to_stack(obj)
    @stack.push(obj)
  end
  def take_from_stack
    @stack.pop(obj)
  end
end

# Even so, modules bring us value insofar as they let us
# imbue certain attributes (like stacklikeness) not just to
# one class, but to several, allowing us to avoid writing
# the same code over and over
