module RootService
  def birthdays
    Profile.all_birthdays
  end
end