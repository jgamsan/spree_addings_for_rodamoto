module SpreeAddingsForRodamoto
  class Engine < Rails::Engine
    engine_name 'spree_addings_for_rodamoto'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
      Spree::Config.searcher_class = Spree::Search::Rodamoto
    end

    config.to_prepare &method(:activate).to_proc
  end
end
