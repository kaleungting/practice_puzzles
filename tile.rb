class Tile

  attr_accessor :val, :given

  def initialize(val,given)
    @val = val
    @given = given
  end

  def to_s
    @val
  end

  def inspect 
    @val
  end
end