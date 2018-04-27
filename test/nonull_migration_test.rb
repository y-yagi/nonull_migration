require "test_helper"

class NonullMigrationTest < Minitest::Test
  def test_generate_null_false_by_default
    attribute = Rails::Generators::GeneratedAttribute.parse("title:string")
    definition = "t.#{attribute.type} :#{attribute.name}#{attribute.inject_options}"

    assert_equal "t.string :title, null: false", definition
  end
end
