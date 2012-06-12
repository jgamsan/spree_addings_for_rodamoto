module SpreeAddingsForRodamoto
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file 'app/assets/javascripts/store/all.js', "//= require store/spree_addings_for_rodamoto\n"
        append_file 'app/assets/javascripts/admin/all.js', "//= require admin/spree_addings_for_rodamoto\n"
      end

      def add_stylesheets
        inject_into_file 'app/assets/stylesheets/store/all.css', " *= require store/spree_addings_for_rodamoto\n", :before => /\*\//, :verbose => true
        inject_into_file 'app/assets/stylesheets/admin/all.css', " *= require admin/spree_addings_for_rodamoto\n", :before => /\*\//, :verbose => true
      end

      def add_datas
        run 'mkdir db/datas'
        copy_file "db/datas/*.csv", "db/datas"
      end
      
      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_addings_for_rodamoto'
      end

      def run_migrations
         res = ask 'Would you like to run the migrations now? [Y/n]'
         if res == '' || res.downcase == 'y'
           run 'bundle exec rake db:migrate'
         else
           puts 'Skiping rake db:migrate, don\'t forget to run it!'
         end
      end
    end
  end
end
