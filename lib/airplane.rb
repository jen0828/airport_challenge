class Plane
  def initialize
    @flying = true
  end

  def take_off
    raise 'Plane cannot take off: plane already flying' if flying
  end

  def land(airport)
    raise 'Plane cannot land: plane already landed' if landed
    @flying = false
    @airport = airport
  end

  def airport
    raise 'Plane cannot be at an airport: Plane already flying' if flying
    @airport
  end

  private

  attr_reader :flying

  def landed
    !flying
  end
end