class ListsController < ApplicationController

  def show
    @bookmarks = Bookmark.new
  end


  def new
    @list = List.new
  end

  def create
    @list= List.new(list_params)

    if @list.save
      redirect_to @list, notice: "List was successfully created."
    else
      render :new, status: :unprocessable_entity
    end


  end

  # create new destroy show]
end
