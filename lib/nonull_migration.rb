require "nonull_migration/version"
require "rails/generators"
require "rails/generators/generated_attribute"

module NonullMigration
  module GeneratedAttribute
    def required?
      true
    end
  end
end

Rails::Generators::GeneratedAttribute.prepend(NonullMigration::GeneratedAttribute)
