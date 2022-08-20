class SearchesController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @search = Search.find(params[:id])
  end

  def new
    @search = Search.new
    @names = User.distinct.pluck(:name)
    @emails = User.distinct.pluck(:email)
    @roles = Role.distinct.pluck(:name)       
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def search_params
    params.require(:search).permit(:name, :email, :role)
  end
end
