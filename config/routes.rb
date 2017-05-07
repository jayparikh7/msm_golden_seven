Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#HOME
get("/", { :controller => "directors", :action => "home"})

#CREATE

get("directors/new", { :controller => "directors", :action => "new_form"})
get("/create_director", { :controller => "directors", :action => "create_row"})

#READ
get("/directors", { :controller => "directors", :action => "index"})
get("/directors/:id", { :controller => "directors", :action => "show"})

#UPDATE
get("directors/:id/edit", { :controller => "directors", :action => "edit_form"})
get("update_director/:id", { :controller => "directors", :action => "update_row"})

#DELETE

get("directors/delete/:id/", { :controller => "directors", :action => "destroy"})

end
