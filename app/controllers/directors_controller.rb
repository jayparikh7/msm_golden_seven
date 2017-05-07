class DirectorsController < ApplicationController


  def home
    redirect_to("/directors")
  end

  def new_form
    @new_director = Director.new
    render("directors/new.html.erb")
  end

  def create_row
    @new_director = Director.new
    @new_director.name = params["name"]
    @new_director.dob = params["dob"]
    @new_director.bio = params["bio"]
    @new_director.image_url = params["image_url"]
    @new_director.save

    redirect_to("/directors")
  end

  def show
    id = params["id"]
    @director = Director.find(id)
    render("/directors/show.html.erb")
  end

  def index
    @all_directors = Director.all.order({:created_at => :desc})
    render("/directors/index.html.erb")
  end

  def edit_form
    id = params["id"]
    @edit_director = Director.find(id)
    render("/directors/edit_form.html.erb")
  end

  def update_row
    id = params["id"]
    @change_director = Director.find(id)
    @change_director.name = params["name"]
    @change_director.dob = params["dob"]
    @change_director.bio = params["bio"]
    @change_director.image_url = params["image_url"]
    @change_director.save
    redirect_to("/directors/"+(@change_director.id).to_s)
  end

  def destroy
    id = params["id"]
    @director = Director.find(id)
    @director.destroy
    redirect_to("/directors")
  end

end
