Redmine::Plugin.register :worktimesummary do
  name 'Worktimesummary plugin'
  author 'Yukio Shiraishi'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/Yukio4ra14/worktimesummary.git'
  author_url 'http://example.com/about'

  menu :project_menu, :worktimesummary, { :controller => 'worktimesummary', :action => 'index' },:param => :project_id, :caption => '工数まとめ'

  project_module :worktimesummary do
    permission :view_worktimesummary, :worktimesummary => [:index, :show]
  end
end
