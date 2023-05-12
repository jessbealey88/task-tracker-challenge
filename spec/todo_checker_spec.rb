require 'todo_checker'

RSpec.describe "todo_checker method" do
    context "If empty string entered" do
        it "fails with error message" do
            expect { todo_checker("") }.to raise_error "You didn't enter any text to check"
        end
    end

    context "If string beginning with #TODO is entered" do
        it "returns tasks to do message" do
            expect(todo_checker("#TODO: gym, shopping, laundry")).to eq "You have tasks to do!"
        end 
    end

    context "If string with #TODO inside is entered" do
        it "returns tasks to do message" do
        expect(todo_checker("You have things #TODO today")).to eq "You have tasks to do!"
        end 
    end

    context "If string ending with #TODO is entered" do
        it "returns tasks to do message" do
            expect(todo_checker("what are you going #TODO")).to eq "You have tasks to do!"
        end 
    end

    context "If string that doesn't contain #TODO is entered" do
        it "returns no tasks to do message" do
            expect(todo_checker("gym, shopping, laundry")).to eq "You have nothing to do"
        end 
    end

    context "If string that doesn't contain #TODO in the right format is entered" do
        it "returns no tasks to do message" do
            expect(todo_checker("todo: code, sleep, eat")).to eq "You have nothing to do"
        end
    end



end