class Car
    attr_reader :color,:manufacturer
    def initialize(args)
        @color = args[:color],
        @manufacturer = args[:args]
        @plate_number  = plate_number
        @plate_number  = plate_number
    end

    def plate_number 
        yield [:plate_number]
    end

    def manufacturer
        yield [:manufacturer]
    end
end
