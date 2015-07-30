class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form

  render("photos/new_form.html.erb")

  end


  def show
    @index_id = params["id"]
    @source = Photo.find(params["id"]).source
    @caption = Photo.find(params["id"]).caption

    render ("photos/detail.html.erb")
  end


end
