class AuthorsController < ApplicationController
class AuthorController < ApplicationController
before_action :set_author, only: [:create, :show]

  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  end


private

def set_author
  @author = Author.find(params[:id])
end

def author_params
  params.require(:author).permit(:name)
end

end
