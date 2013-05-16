SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = 'active'           # sets selected tab/pill to .active class that Bootstrap uses
  navigation.items do |primary|
    primary.dom_class = 'nav'            # sets the containing ul class="nav nav tab" for Bootstrap
    primary.item :home, 'Home', '/', icon: 'icon-home'
    primary.item :rules, 'Rules', icon: 'icon-file' do |rules|
      rules.item :getting_started, 'Getting Started', '/rules/getting-started'
      rules.item :problem_statement, 'Problem Statement', '/rules/problem-statement'
      rules.item :make_play, 'Making a Play', '/rules/make-play'
      rules.item :tile_info, 'Tile Info', '/rules/tile-info'
      rules.item :board, 'Board Info', '/rules/board-info'
      rules.item :dictionary, 'Dictionary', '/rules/dictionary'
    end
    primary.item :schedule, 'Schedule', '/schedule', icon: 'icon-calendar'
    primary.item :awards, 'Awards', '/awards', icon: 'icon-trophy'
    primary.item :assignments, 'Assignments', '/assignments', icon: 'icon-user'
  end
end