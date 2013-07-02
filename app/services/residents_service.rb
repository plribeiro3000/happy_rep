module AdminsService
  def all
    { :residents => User.joins(:profile).where('profiles.role' => 'resident') }
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
    { :resident => resident }
  end

  def modify(id, attributes = {})
    resident = self.find(id)[:resident]
    resident.update_attributes(attributes)
    { :resident => resident }
  end

  def delete(id)
    resident = self.find(id)[:resident]
    resident.destroy
    { :resident => resident }
  end

  protected

  def interface_name
    'user'
  end
end