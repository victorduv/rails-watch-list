class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    # raise
    @bookmark.list = @list
    if @bookmark.save
      redirect_to @list
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    # @list = List.find(bookmark_params)
    @bookmark.destroy
    redirect_to @bookmark.list
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
