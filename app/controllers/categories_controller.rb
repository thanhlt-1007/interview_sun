class CategoriesController < ApplicationController
  before_action :load_category, only: :show

  def show
    @questions = @category.questions
  end

  private

  def load_category
    @category = Category.find_by id: params[:id]
    return if @category

    flash[:danger] = "Category not found."
    redirect_to root_url
  end
end
