module FormersService
  def advanced_search(name)
    if name.present?
      User.joins(:profile).where('profiles.role' => 'former', 'profiles.name' => name)
    else
      User.joins(:profile).where('profiles.role' => 'former')
    end
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
    { :former => former, :location => formers_path }
  end

  def modify(id, attributes = {})
    former = self.find(id)[:former]
    former.update_attributes(attributes)
    { :former => former, :location => formers_path }
  end

  def delete(id)
    former = self.find(id)[:former]
    former.destroy
    { :former => former, :location => formers_path }
  end

  protected

  def interface_name
    'user'
  end
end