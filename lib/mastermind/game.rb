module Mastermind
    class Game

        def play
            puts "Welcome to Mastermind! Do you want to be the codemaker(input 1) or codebreaker(input2)?"
            mode = choose_mode
            if mode == '1'
                #codemaker
            else
                breaker = Codebreaker.new
                breaker.turns
            end
        end

        def choose_mode
            input = gets.chomp
            return input if input.match(/^[1-2]$/)

            puts "Invalid input. Please type 1 (codemaker) ot 2 (codebreaker)."
            choose_mode
        end
    end
end