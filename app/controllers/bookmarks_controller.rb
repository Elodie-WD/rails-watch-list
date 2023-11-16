class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to lists_path(@bookmark)
  end

  private

  def list_params
    params.require(:bookmark).permit(:comment)
  end
end
