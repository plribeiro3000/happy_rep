module AdminsService
  def all
    { :admins => User.joins(:profile).where('profiles.role' => 'admin') }
  end

  def build
    admin = User.new
    admin.build_profile
    { :admin => admin }
  end

  def find(id)
    { :admin => User.joins(:profile).where('profiles.role' => 'admin').find(id, :readonly => false) }
  end

  def generate(attributes = {})
    admin = User.new(attributes)
    admin.profile.role = 'admin'
    admin.save
    { :admin => admin }
  end

  def modify(id, attributes = {})
    admin = self.find(id)[:admin]
    admin.update_attributes(attributes)
    { :admin => admin }
  end

  def delete(id)
    admin = self.find(id)[:admin]
    admin.destroy
    { :admin => admin }
  end

  protected

  def interface_name
    'user'
  end
end