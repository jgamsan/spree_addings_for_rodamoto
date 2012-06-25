Deface::Override.new(:virtual_path => "spree/shared/_nav_bar",
                     :name => "add_rodamoto_search",
                     :insert_bottom => "li#search-bar",
                     :text => %q{
<li id="tires-search-bar" data-hook>
  <%= render :partial => 'spree/shared/search_tires' %>
</li>})
