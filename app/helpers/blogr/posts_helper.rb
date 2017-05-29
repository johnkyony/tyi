module Blogr::PostsHelper
  def link_to_posts(name , action )
    if @current_blogr_tab == action
      content_tag :span , "#{name} #{@posts.size}"
    else
      link_to name  
    end
    
  end
  
  def link_to_published(post)
    if post.published_at?
      link_to 'Unpublish', unpublish_blogr_post_path(post), method: :patch, data: { confirm: 'Are you sure?' } , class: "nav-link list-inline-item"
    else
      link_to 'Publish', publish_blogr_post_path(post), method: :patch, data: { confirm: 'Are you sure?' } , class: "nav-link list-inline-item"
    end
  end
  
  def no_posts_message
    if @posts.size == 0
      content_tag :div, "You don't have any posts here yet."
    end
  end
  
end
