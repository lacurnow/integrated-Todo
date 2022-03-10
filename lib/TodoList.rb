class TodoList
  def initialize
    @todo_list = []
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
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end