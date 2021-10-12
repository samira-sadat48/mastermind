require "spec_helper"

module Mastermind
    RSpec.describe Codemaker do
        context "#initialize" do
            it "raises an exception when initialized with {}" do
                expect { Codemaker.new({}) }.to raise_error
            end

            it "does not raise an error when initialized with a valid input hash" do
                input = { name: "samira" }
                expect { Codemaker.new(input) }.to_not raise_error
            end
        end
    end
end