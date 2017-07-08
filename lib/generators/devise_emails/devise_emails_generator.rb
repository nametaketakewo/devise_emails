module DeviseEmails
  module Generators
    class DeviseEmailsGenerator < Rails::Generators::NamedBase
      namespace 'devise_emails'
      desc ''

      def inject_devise_emails_content
        puts name
        path = File.join('app', 'models', name + '.rb')
        if File.exists?(path)
          inject_into_file(path, 'emails, :', after: 'devise :')
        else
          say_status('skipped', "Model '#{name}' not found")
        end
      end
    end
  end
end