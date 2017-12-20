class CategoriesController < ApplicationController
  before_action :require_login

  def show
    @category = Category.find(params[:id])
  end

  private
  def require_login
    current_user
  end

end
