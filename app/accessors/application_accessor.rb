class ApplicationAccessor
  def initialize(object)
    @object = object
  end

  def self.find(id)
    @object = interface.find(id)
  end

  def self.interface
    class_name = self.name
    class_name.slice!("Accessor")
    class_name.constantize
  end

  def method_missing(method_name, *args)
    return @object.send(method_name, *args) if @object.respond_to?(method_name)
    super
  end

  def respond_to_missing?(method_name, include_private = false)
    return true if @object.respond_to?(method_name)
    super
  end
end