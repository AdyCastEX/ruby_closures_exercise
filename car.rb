class Car
    attr_reader :color, :manufacturer, :plate_number

    def initialize(attributes = {})
        @color = attributes[:color]
        @plate_number = attributes[:plate_number]
        @manufacturer = attributes[:manufacturer]

        yield(self) if block_given?
    end

    def plate_number=(value)
        @plate_number = value
    end

    def manufacturer=(value)
        @manufacturer = value
    end
end
