# NonullMigration

Generate null false column in Rails migration.

```
$ ./bin/rails g model task name:string point:integer
$ cat db/migrate/20180427050636_create_tasks.rb
class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.integer :point, null: false

      t.timestamps
    end
  end
end
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nonull_migration'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nonull_migration

## Usage

It is used automatically.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/y-yagi/nonull_migration. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NonullMigration project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/y-yagi/nonull_migration/blob/master/CODE_OF_CONDUCT.md).
