Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Main Page
  get("/", {:controller => "directors", :action => "view"})


  # 1. Directors

  # Index pages
  get("/directors", {:controller => "directors", :action => "view"})

  # A: Routes for creating

  get("directors/new", { :controller => "directors", :action => "new_form"})
  get("create_director", { :controller => "directors", :action => "create_row"})

  # B: Routes for reading

  get("/directors", {:controller => "directors", :action => "view"})
  get("/directors/:id", {:controller => "directors", :action => "show"})


  # C: Routes for updating

  get("/update_director/:id", { :controller => "directors", :action => "update_row" })
  get("/directors/:id/edit", { :controller => "directors", :action => "edit_form" })



  # D: Routes for deleting

  get("/delete_director/:id", {:controller => "directors", :action => "destroy"})



  # 2. Actors


  # Index pages
  get("/actors", {:controller => "actors", :action => "view"})

  # A: Routes for creating

  get("actors/new", { :controller => "actors", :action => "new_form"})
  get("create_actor", { :controller => "actors", :action => "create_row"})

  # B: Routes for reading

  get("/actors", {:controller => "actors", :action => "view"})
  get("/actors/:id", {:controller => "actors", :action => "show"})


  # C: Routes for updating

  get("/update_actor/:id", { :controller => "actors", :action => "update_row" })
  get("/actors/:id/edit", { :controller => "actors", :action => "edit_form" })



  # D: Routes for deleting

  get("/delete_actor/:id", {:controller => "actors", :action => "destroy"})

  # 3. Movies


  # Index pages
  get("/movies", {:controller => "movies", :action => "view"})

  # A: Routes for creating

  get("movies/new", { :controller => "movies", :action => "new_form"})
  get("create_movie", { :controller => "movies", :action => "create_row"})

  # B: Routes for reading

  get("/movies", {:controller => "movies", :action => "view"})
  get("/movies/:id", {:controller => "movies", :action => "show"})


  # C: Routes for updating

  get("/update_movie/:id", { :controller => "movies", :action => "update_row" })
  get("/movies/:id/edit", { :controller => "movies", :action => "edit_form" })



  # D: Routes for deleting

  get("/delete_movie/:id", {:controller => "movies", :action => "destroy"})


end
