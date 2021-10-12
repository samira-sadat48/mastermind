require_relative './extensions'

module Mastermind
    class CodePeg
        include Extensions

        attr_accessor :color
        def initialize(color = "1")
            if color.to_i > 6 || color.to_i < 1
                raise ArgumentError.new "Invalid Player Arguments"
            end
            @color = code_colors(color)
        end
    end
end