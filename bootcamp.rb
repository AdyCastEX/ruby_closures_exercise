class Bootcamp
    attr_reader :topics

    def initialize(&block)
        @topics = []
    instance_eval(&block)
    end
end
