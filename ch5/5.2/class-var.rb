require "pry"

class Car
  # @@makes = []
  # @@cars = {}
  # @@total_count = 0

  attr_reader :make

  def self.total_count
    @total_count ||= 0
  end

  def self.total_count=(n)
    @total_count = n
  end

  def self.makes
    @makes ||= []
  end

  def self.makes=(n)
    unless @makes
      @makes = []
    end
    @makes << n
  end

  def self.cars
    @cars ||= {}
  end

  def self.cars=(n)
    unless @cars
      @cars = {}
    end
    @cars[n] = 0
  end

  def self.add_make(make)
    unless makes.include?(make)
      self.makes = make
      self.cars = make
    end
  end

  def initialize(make)
    if self.class.makes.include?(make)
      puts "Creating a new #{make}!"
      @make = make
      self.class.cars[make] += 1
      self.class.total_count += 1
    else raise "No such make: #{make}."
    end
  end

  def make_mates
    self.class.cars[self.make]
  end
end

binding.pry
