class CheckListsController < ApplicationController
  def new
  	@check_list = CheckList.new
  	@check_list.checks.build
  end

  def create
    @check_list = CheckList.new(check_list_params)
    @check_list.user_id = current_user.id
    @check_list.save
    redirect_to check_lists_path
  end

  def show
    @check_list = CheckList.find(params[:id])
  end

  def index
    @check_lists = CheckList.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def check_list_params
  	params.require(:check_list).permit(:user_id, :list_title, checks_attributes: [:id, :check, :_destroy])
  end
end
