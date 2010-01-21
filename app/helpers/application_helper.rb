# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def tag_list(tag_list)
    link_to("", "")
    content_tag('span', "[#{tag_list.collect { |t| link_to(t, tag_path(t))}.join(', ')}]", :class => 'tag-list')
  end
end
