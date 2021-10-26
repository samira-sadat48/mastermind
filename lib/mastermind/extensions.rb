module Extensions
    def code_colors(number)
    {
        '1' => "\e[101m  1  \e[0m ",
        '2' => "\e[43m  2  \e[0m ",
        '3' => "\e[44m  3  \e[0m ",
        '4' => "\e[45m  4  \e[0m ",
        '5' => "\e[46m  5  \e[0m ",
        '6' => "\e[41m  6  \e[0m ",
    }[number]
    end

    def clue_colors(letter)
    {
        'b' => "\e[91m\u25CF\e[0m ",
        'w' => "\e[37m\u25CB\e[0m "
    }[letter]
    end

    def compare(computer,human)
        temp_computer_code = computer
        temp_human_guess = human
        #check number of exact matches
        @exact_number = find_exact_matches(temp_computer_code, temp_human_guess)
        #check number of same matches
        @same_number = find_correct_numbers(temp_computer_code, temp_human_guess)
    end

    def find_exact_matches(code,guess)
        exact = 0
        code.each_with_index do |peg, index|
            if peg == guess[index]
                exact += 1
                code[index] = '*'
                guess[index] = '*'
            end
        end
    end

    def find_correct_numbers(code,guess)
        #check entire guess array to see if it includes each code item
        same = 0
        guess.each_with_index do |peg, index|
            if  guess[index] != "*" && code.include?(guess[index])
                same += 1
                code_index = code.find_index(guess[index])
                code[code_index] = '?'
                guess = '?'
            end
        end
        same
    end
end
    
        