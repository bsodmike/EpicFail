# encoding: utf-8
require 'rails/generators'
require 'rails/generators/migration'

# generator namespaced as per 
# http://davidsulc.com/blog/2011/05/22/adding-a-namespaced-rails-generator-to-a-standalone-ruby-gem/
module OilChange
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
  
      def self.source_root
        @source_root ||= File.join(File.dirname(__FILE__), 'templates')
      end
  
      # Implement the required interface for Rails::Generators::Migration.
      # taken from http://github.com/rails/rails/blob/master/activerecord/lib/generators/active_record.rb
      def self.next_migration_number(dirname)
        if ActiveRecord::Base.timestamped_migrations
          Time.now.utc.strftime("%Y%m%d%H%M%S")
        else
          "%.3d" % (current_migration_number(dirname) + 1)
        end
      end

      # def create_migration_file
      #   migration_template 'migration.rb', 'db/migrate/create_accounts_table.rb'
      # end  
    end
  end
end