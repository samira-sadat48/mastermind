require_relative './extensions'

module Mastermind
    class KeyPeg
        include Extensions

        attr_accessor :clue_color
        def initialize(clue_color = 'b')
            if clue_color != 'b' && clue_color != 'w'
                raise ArgumentError.new "Invalid Player Arguments"
            end
            @clue_color = clue_colors(clue_color)
        end
    end
end
