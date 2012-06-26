Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                     :name => "add_rodamoto_pvp",
                     :insert_bottom => %q{.left},
                     :text => %q{ <%= render :partial => "spree/admin/products/_rodamoto_pvp" %> })
