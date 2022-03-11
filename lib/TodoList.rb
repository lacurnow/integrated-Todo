require_relative 'Todo.rb'

class TodoList
  def initialize
    @todo_list = []
    @complete_list = []
  end

  def add(todo) 
    @todo_list << todo
    # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    @todo_list
    # Returns all non-done todos
  end

  def complete
    @todo_list.each { |todo| 
      if todo.done?
        @complete_list << todo
      end 
    }
    @complete_list.each { |todo| 
    if @todo_list.include? todo
      @todo_list.delete(todo)
    end
    }
    @complete_list
  end

  def give_up!
    @todo_list.map { |task|
      task.mark_done!
    }
    # Marks all todos as complete
  end
end

todo_list = TodoList.new
new_task1 = Todo.new("Walk the dog")
new_task2 = Todo.new("Wash the car")
todo_list.add(new_task1)
todo_list.add(new_task2)
todo_list.give_up!
todo_list.complete

