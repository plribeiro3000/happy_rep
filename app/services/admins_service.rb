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
    { :admin => User.joins(:profile).where('profiles.role' => 'admin').find(id) }
  end

  def generate(attributes = {})
    admin = User.new(attributes)
    admin.profile.role = 'admin'
    admin.create
    { :admin => admin }
  end

  def modify(id, attributes = {})
    admin = self.find(id)
    admin.update_attributes(attributes)
    { :admin => admin }
  end

  def delete
    admin = self.find(id)
    admin.destroy
    { :admin => admin }
  end
end