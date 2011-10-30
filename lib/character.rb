require "character/engine"

module Character
  mattr_accessor :user_class

  class << self
    def user_class
      @@user_class || raise(ConfigurationNotFound.new("user_class"))
    end
  end
end
