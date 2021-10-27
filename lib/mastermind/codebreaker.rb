module Mastermind
    class Codebreaker
        attr_reader :name, :computer_code, :guess_code, :exact_number, :same_number

        include extensions

        def initialize(input)
            if input == nil
                raise ArgumentError.new "Invalid Player Arguments"
            end
            @name = input.fetch(:name)
            peg_one = CodePeg.new((rand(6)+1).to_s)
            peg_two = CodePeg.new((rand(6)+1).to_s)
            peg_three = CodePeg.new((rand(6)+1).to_s)
            peg_four = CodePeg.new((rand(6)+1).to_s)

            @computer_code = [peg_one,peg_two,peg_three, peg_four]
        end

        def turns
            puts "Human Player - make your first guess!"
            turn_loop
            game_over
        end

        def turn_loop
            current_turn = 1
            while current_turn <= 12
                puts "This is turn number #{current_turn}."
                @guess_code = create_guess_pegs(human_input)
                current_turn += 1
                break if guess_code[0] = 'q' 
                puts guess_code
                break if guess_code == computer_code
                turn_result?
            end
        end

        def game_over
            if computer_code == guess_code
                puts "You win!"
            else
                puts "You lose! The correct answer is #{computer_code}."
            end
        end

        def human_input
            input = gets.chomp
            return input if input.match(/^[1-6]{4}$/)
            return input if input.downcase == 'q'

            #invalid warning and try again
            puts "Invalid input. Try again! Please select 4 numbers from 1-6."
            human_input
        end

        def turn_result?
            #compare to find exact and same matches
            compare(computer_code,guess_code)
            #output the clue array to console
            puts "Clues: "
            exact_number.times { puts clue_colors('*')}
            same_number.times { puts clue_colors('?')}
        end

        def create_guess_pegs(input)
            guess = Array.new
            input.each {|n| guess.push(n)}
            guess
        end
    end
end