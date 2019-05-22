Rails.application.routes.draw do
  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
  comfy_route :blog_admin, path: "/admin"
  comfy_route :blog, path: "/blog"
  comfy_route :cms_admin, path: "/admin"
  # Ensure that this route is defined last
  comfy_route :cms, path: "/"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
