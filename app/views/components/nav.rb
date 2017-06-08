module Components
  
  class Nav < React::Component::Base

    def say_hello(i)
      alert "Hello from number #{i}"
    end

    def render
      div do
        ReactBootstrap::Carousel(bsClass: 'carousel' , controls: true , indicators: true) do
              Post.all.each do |post|
                ReactBootstrap::Carousel.Item(active: true , animateIn: true , animateOut: true ) do 
                  ReactBootstrap::Carousel.Caption do 
                    h3 "#{post.title}" 
                    p "#{truncate post.body, length: 140}"
                  end
                end
              end
            end
      end
    end
  end
  
end