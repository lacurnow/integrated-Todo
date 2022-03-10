require 'Todo'
require 'TodoList'

RSpec.describe "integration" do
  context "when we add a todo task" do
    it "adds that task to the todo list" do
      todo_list = TodoList.new
      new_task = Todo.new("Walk the dog")
      todo_list.add(new_task)
      result = todo_list.incomplete
      expect(result).to eq [new_task]
    end
  end
end