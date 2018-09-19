class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def edit
  end
  
end
