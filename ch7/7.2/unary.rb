require "pry"

class Banner
  def initialize(text)
    @text = text
  end
  def to_s
    @text
  end
  def -@
    @text.downcase
  end
  def +@
    @text.upcase
  end
  def !
    @text.reverse
  end
end

binding.pry
