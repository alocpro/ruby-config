class RailsConfigGenerator < Rails::Generators::Base
  desc "Generates a custom Rails Config initializer file."
  
  def self.source_root
    @_rails_config_source_root ||= File.expand_path("../templates", __FILE__)
  end
  
  def copy_initializer
    template "rails_config.rb", "config/initializers/rails_config.rb"
  end
end