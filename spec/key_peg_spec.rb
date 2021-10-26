require "spec_helper"

module Mastermind
    RSpec.describe KeyPeg do
        context "#initialize" do
            it "is initialized with default value of b" do
                peg = KeyPeg.new
                expect(peg.clue_color).to eq "\e[91m\u25CF\e[0m "
            end

            it "is initialized with w passed in " do
                peg = KeyPeg.new('w')
                expect(peg.clue_color).to eq "\e[37m\u25CB\e[0m "
            end

            it "raises error when value passed in is not valid" do
                clue_color = 'a'
                expect { CodePeg.new(clue_color) }.to raise_error
            end
        end
    end
end