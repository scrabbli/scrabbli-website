SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = 'active'           # sets selected tab/pill to .active class that Bootstrap uses
  navigation.items do |primary|
    primary.dom_class = 'nav'            # sets the containing ul class="nav nav tab" for Bootstrap
    primary.item :home, 'Home', '/', icon: 'icon-home'
    primary.item :rules, 'Rules', '/rules', icon: 'icon-file'
    primary.item :assignments, 'Assignments', '/assignments', icon: 'icon-user'
  end
end