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
  context "when we complete a todo task" do
    it "adds incomplete todo to complete todo" do
      todo_list = TodoList.new
      new_task1 = Todo.new("Walk the dog")
      new_task2 = Todo.new("Wash the car")
      todo_list.add(new_task1)
      todo_list.add(new_task2)
      new_task1.mark_done!
      result = todo_list.complete
      expect(result).to eq [new_task1]
    end
  end
end