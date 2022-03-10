require 'Todo'

RSpec.describe Todo do
  it "constructs" do
    new_todo = Todo.new("Walk the dog")
    expect(new_todo.task).to eq "Walk the dog"
  end
end