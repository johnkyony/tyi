module Components
  module Home
    class Show < React::Component::Base

      def say_hello(i)
        alert "Hello from number #{i}"
      end

      def render
        div do
          ReactBootstrap::Navbar(bsStyle: :inverse) do
            ReactBootstrap::Nav() do
              
              ReactBootstrap::NavbarBrand() do
                a(href: '/') { 'TYI' }
              end
              div.nav_form.navbar_right do 
                div.form_group do 
                  input.form_control(type: :text , placeholder: "enter your handle" )
                end
              end
            end
          end
          
        end
      end
    end
  end
end
