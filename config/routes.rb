Rails.application.routes.draw do
  devise_for :users
  root to: 'comfy/cms/content#show'

  comfy_route :cms_admin, path: "/admin/cms"
  # Ensure that this route is defined last
  comfy_route :cms, path: "/"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
