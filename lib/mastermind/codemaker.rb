module Mastermind
    class Codemaker
        attr_reader :name
        def initialize(input)
            if input == nil
                raise ArgumentError.new "Invalid Player Arguments"
            end
            @name = input.fetch(:name)
        end

        def select_colors(item)
            #sequence of 4 items (colored pegs)
            #each peg random from 1-6
            #peg_one = Peg.new(randomNum)
        end
    end
end