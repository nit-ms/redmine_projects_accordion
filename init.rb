Redmine::Plugin.register :redmine_nti_accordion do
  name 'Redmine Projects Accordion plugin NTI Modifications'
  author 'Vinicius Victorio'
  description 'Este plugin foi alterado para as atender as necessidades do NTI'
  version '0.1.0'
  url 'http://reuben.mallaby.me'
  author_url 'http://reuben.mallaby.me'
end

class RedmineProjectsAccordionListener < Redmine::Hook::ViewListener

  # Adds javascript and stylesheet tags
  def view_layouts_base_html_head(context)
    stylesheet_link_tag('redmine_projects_accordion', :plugin => :redmine_nti_accordion)
  end
  
end
