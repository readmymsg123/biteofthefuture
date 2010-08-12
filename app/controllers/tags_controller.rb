class TagsController < ApplicationController
  def index
    @tags = Tag.find(:all)
  end

  def show
     @tag = Tag.find(params[:id])
      @posts = Post.find_tagged_with(@tag)

      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @post }
      end
  end
end
