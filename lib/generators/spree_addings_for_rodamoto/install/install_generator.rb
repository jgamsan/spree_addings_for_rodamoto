module SpreeAddingsForRodamoto
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
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
        copy_file "anchos.csv", "db/datas/anchos.csv"
        copy_file "fr.csv", "db/datas/fr.csv"
        copy_file "ics.csv", "db/datas/ics.csv"
        copy_file "llantas.csv", "db/datas/llantas.csv"
        copy_file "perfiles.csv", "db/datas/perfiles.csv"
        copy_file "tttl.csv", "db/datas/tttl.csv"
        copy_file "vel.csv", "db/datas/vel.csv"
        copy_file "marcas.csv", "db/datas/marcas.csv"
        copy_file "taxons.csv", "db/datas/taxons.csv"
        copy_file "zones.csv", "db/datas/zones.csv"
        copy_file "zone_members.csv", "db/datas/zone_members.csv"
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
