class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form

  render("photos/new_form.html.erb")

  end

  def create_row
    # params = {"the_caption"=>"A caption", "the_source"=>"some-url"}

    p = Photo.new
    p.caption = params["the_caption"]
    p.source = params["the_source"]
    p.save

    redirect_to("http://localhost:3000/photos")
  end

  def show
    # params = {"id"=>"4"}

    @photo = Photo.find(params["id"])
  end

  def destroy
    @photo = Photo.find(params["id"])

    @photo.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
  @photo = Photo.find(params["id"])
  render ("photos/edit_form.html.erb")
  end


  def update_row
    p = Photo.find(params["id"])
      p.caption = params["the_caption"]
      p.source = params["the_source"]
      p.save

    redirect_to("http://localhost:3000/photos")
  end



end
