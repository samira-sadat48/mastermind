module Mastermind
    class Codebreaker
        attr_reader :name
        def initialize(input)
            if input == nil
                raise ArgumentError.new "Invalid Player Arguments"
            end
            @name = input.fetch(:name)
        end
    end
end