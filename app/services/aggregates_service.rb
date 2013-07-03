module AggregatesService
  def advanced_search(name)
    if name.present?
      User.joins(:profile).where('profiles.role' => 'aggregate', 'profiles.name' => name)
    else
      User.joins(:profile).where('profiles.role' => 'aggregate')
    end
  end

  def build
    aggregate = User.new
    aggregate.build_profile
    { :aggregate => aggregate }
  end

  def find(id)
    { :aggregate => User.joins(:profile).where('profiles.role' => 'aggregate').find(id, :readonly => false) }
  end

  def generate(attributes = {})
    aggregate = User.new(attributes)
    aggregate.profile.role = 'aggregate'
    aggregate.save
    { :aggregate => aggregate, :responder => 'aggregate' }
  end

  def modify(id, attributes = {})
    aggregate = self.find(id)[:aggregate]
    aggregate.update_attributes(attributes)
    { :aggregate => aggregate, :responder => 'aggregate' }
  end

  def delete(id)
    aggregate = self.find(id)[:aggregate]
    aggregate.destroy
    { :aggregate => aggregate, :responder => 'aggregate' }
  end

  protected

  def interface_name
    'user'
  end
end