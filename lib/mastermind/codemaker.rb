module Mastermind
    class Codemaker
        attr_reader :name
        def initialize(input)
            if input == nil
                raise ArgumentError.new "Invalid Player Arguments"
            end
            @name = input.fetch(:name)
        end

        def select_colors
            #sequence of 4 items (colored pegs)
            #each peg random from 1-6
            peg_one = CodePeg.new((rand(6)+1).to_s)
            peg_two = CodePeg.new((rand(6)+1).to_s)
            peg_three = CodePeg.new((rand(6)+1).to_s)
            peg_four = CodePeg.new((rand(6)+1).to_s)

            colors = [peg_one,peg_two,peg_three, peg_four]
            colors
        end
    end
end