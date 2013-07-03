module TasksService
  include Zertico::Service

  def advanced_search(name, date)
    Task.by_name(name).by_start_date(date)
  end

  def find(id)
    { :task => Task.where(:profile_id => current_user.profile.id).find(id) }
  end

  def generate(attributes = {})
    task = Task.new(attributes)
    task.profile = current_user.profile
    task.save
    { :task => task }
  end

  def modify(id, attributes = {})
    task = self.find(id)[:task]
    task.update_attributes(attributes)
    { :task => task }
  end

  def delete(id)
    task = self.find(id)[:task]
    task.destroy
    { :task => task }
  end
end