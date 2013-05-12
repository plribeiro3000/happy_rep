module UserService
  def self.all
    User.all
  end

  def self.find(id)
    UserAccessor.find(id)
  end
end