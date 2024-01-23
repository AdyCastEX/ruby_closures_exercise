class Car
  attr_accessor :color, :manufacturer, :plate_number

  def initialize(args = {})
    @color = args[:color]
    @manufacturer = args[:manufacturer]
    @plate_number = args[:plate_number]
    
    yield(self) if block_given?
  end

end
