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
        #check number of exact matches
        #check number of same matches
    end

    #def feedback(turn_number)
        #initialize a clue_tracker row array
        #clue_tracker_row = Array.new(4)
        #compare secret code with the player guess
        #guess_tracker[turn_number].each_with_index do {|guess_peg, guess_index|
            #ecret_code.each do{|code_peg, code_index|}
                #find ones that match color and position(indexes)
                #if (guess_peg == code_peg) && (guess_index == code_index)
                    #set a black key peg in the next empty index in clue tracker
                    #clue_tracker_row[code_index] = KeyPeg.new('b')
                #elsif guess_peg == code_peg
                    #set white key peg
                #end
            #}
            #end
        #}
        #end
        #return  clue_tracker_row
    #end
end
    
        