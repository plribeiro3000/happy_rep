module FormersService
  def all
    { :formers => User.joins(:profile).where('profiles.role' => 'former') }
  end

  def build
    former = User.new
    former.build_profile
    { :former => former }
  end

  def find(id)
    { :former => User.joins(:profile).where('profiles.role' => 'former').find(id, :readonly => false) }
  end

  def generate(attributes = {})
    former = User.new(attributes)
    former.profile.role = 'former'
    former.save
    { :former => former }
  end

  def modify(id, attributes = {})
    former = self.find(id)[:former]
    former.update_attributes(attributes)
    { :former => former }
  end

  def delete(id)
    former = self.find(id)[:former]
    former.destroy
    { :former => former }
  end

  protected

  def interface_name
    'user'
  end
end