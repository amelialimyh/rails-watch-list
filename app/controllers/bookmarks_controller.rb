class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark - Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to lists_path
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to lists_path
  end
end
