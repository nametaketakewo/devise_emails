module DeviseEmails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      desc ''

      source_root File.expand_path('../templates', __FILE__)

      def copy_migrations
        migration_name = 'create_devise_emails'
        if self.class.migration_exists?('db/migrate', migration_name)
          say_status('skipped', "Migration '#{migration_name}' already exists")
        else
          migration_template('create_devise_emails.rb.erb', "db/migrate/#{migration_name}.rb")
        end
      end

      def create_email_model
        class_file = 'app/models/email.rb'
        if File.exist?(File.join(destination_root, class_file))
          say_status('skipped', "Model 'Email' already exists")
        else
          template('email.rb', class_file)
        end
      end

      def self.next_migration_number(*)
        Time.now.utc.strftime('%Y%m%d%H%M%S')
      end
    end
  end
end