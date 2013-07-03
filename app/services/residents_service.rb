module ResidentsService
  def advanced_search(name)
    if name.present?
      User.joins(:profile).where('profiles.role' => 'resident', 'profiles.name' => name)
    else
      User.joins(:profile).where('profiles.role' => 'resident')
    end
  end

  def build
    resident = User.new
    resident.build_profile
    { :resident => resident }
  end

  def find(id)
    { :resident => User.joins(:profile).where('profiles.role' => 'resident').find(id, :readonly => false) }
  end

  def generate(attributes = {})
    resident = User.new(attributes)
    resident.profile.role = 'resident'
    resident.save
    { :resident => resident, :location => residents_path }
  end

  def modify(id, attributes = {})
    resident = self.find(id)[:resident]
    resident.update_attributes(attributes)
    { :resident => resident, :location => residents_path }
  end

  def delete(id)
    resident = self.find(id)[:resident]
    resident.destroy
    { :resident => resident, :location => residents_path }
  end

  protected

  def interface_name
    'user'
  end
end