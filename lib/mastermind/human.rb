module Mastermind
    class Human
        attr_reader :name, :role
        def initialize(input)
            if input == nil
                raise ArgumentError.new "Invalid Player Arguments"
            end
            @name = input.fetch(:name)
            @role = input.fetch(:role)
        end
    end
end