require "spec_helper"

module Mastermind
    RSpec.describe CodePeg do
        context "#initialize" do
            it "is initialized with default value of 1" do
                peg = CodePeg.new
                expect(peg.color).to eq "\e[101m  1  \e[0m "
            end

            it "is initialized with color value (1-6) passed in" do
                peg = CodePeg.new('4')
                expect(peg.color).to eq "\e[45m  4  \e[0m "
            end

            it "raises error when value passed in is not valid" do
                color = '7'
                expect { CodePeg.new(color) }.to raise_error
            end
        end
    end
end