module AggregatesService
  def all
    { :aggregates => User.joins(:profile).where('profiles.role' => 'aggregate') }
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
    { :aggregate => aggregate }
  end

  def modify(id, attributes = {})
    aggregate = self.find(id)[:aggregate]
    aggregate.update_attributes(attributes)
    { :aggregate => aggregate }
  end

  def delete(id)
    aggregate = self.find(id)[:aggregate]
    aggregate.destroy
    { :aggregate => aggregate }
  end

  protected

  def interface_name
    'user'
  end
end