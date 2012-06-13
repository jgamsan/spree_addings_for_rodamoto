Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                     :name => "add_rodamoto_specs",
                     :insert_bottom => "#shipping_specs",
                     :text => "
       <ul>
        <li>
          <%= f.label :tire_speed_code_id, t(:speed_code) %>
          <%= f.collection_select(:tire_speed_code_id, Spree::TireSpeedCode.all, :id, :name, { :include_blank => true }, { 'style' => 'width:40px' }) %>
        </li>
        <li>
          <%= f.label :tire_width_id, t(:width) %>
          <%= f.collection_select(:tire_width_id, Spree::TireWidth.all, :id, :name, { :include_blank => true }, { 'style' => 'width:40px' }) %>
        </li>
        <li>
          <%= f.label :tire_profile_id, t(:profile) %>
          <%= f.collection_select(:tire_profile_id, Spree::TireProfile.all, :id, :name, { :include_blank => true }, { 'style' => 'width:40px' }) %>
        </li>  
       </ul>")
