module Blogr::PostsHelper
  def link_to_posts(name , action , css_style )
    if @current_blogr_tab == action
      content_tag :span , "#{name} #{@posts.size}"
    else
      link_to name , controller: :posts , action: action , class: "#{css_style}"
    end
    
  end
  
  def link_to_published(post , css_style)
    if post.published_at?
      link_to 'Unpublish', unpublish_blogr_post_path(post), method: :patch, data: { confirm: 'Are you sure?' } , class: "#{css_style}"
    else
      link_to 'Publish', publish_blogr_post_path(post), method: :patch, data: { confirm: 'Are you sure?' } , class: "#{css_style}"
    end
  end
  
  def no_posts_message
    if @posts.size == 0
      content_tag :div, "You don't have any posts here yet."
    end
  end
  
end
