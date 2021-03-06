Rails.application.routes.draw do
  resources :widgets, only: [ :index, :show ]
  resources :widget_ratings, only: [ :create ]

  ####
  # Custom/vanity routes start here
  #
  # For each new route:
  #
  # * Be sure you have the canonical route declared above
  # * Add the new custom route below the existing ones
  # * Document why it's needed
  # * Explain anything else non-standard

  # Used in podcast ads for the 'amazing' campaign
  get "/amazing", to: redirect("/widgets")
end
