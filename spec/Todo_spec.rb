require 'Todo'

RSpec.describe Todo do
  it "constructs" do
    new_todo = Todo.new("Walk the dog")
    expect(new_todo.task).to eq "Walk the dog"
  end
  context "mark_done!" do
    it "adds @TODO string to original string to mark task as done and checks" do
      new_todo = Todo.new("Walk the dog")
      new_todo.mark_done!
      expect(new_todo.done?).to eq true
    end
  end    
end