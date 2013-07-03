module AnimalsService
  include Zertico::Service

  def advanced_search(name, race)
    Animal.by_name(name).by_race(race)
  end
end