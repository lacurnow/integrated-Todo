class Todo
  def initialize(task) # task is a string
    @task = task
  end

  def task
    @task
  end

  def mark_done!
    @task = @task + "@TODO"
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    if @task.include? "@TODO"
      return true
    else
      return false
    end  
    # Returns true if the task is done
    # Otherwise, false
  end
end