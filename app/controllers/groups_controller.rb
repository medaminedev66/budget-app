class GroupsController < ApplicationController
  def index
    @groups = current_user.groups.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params.require(:group).permit(:name, :icon))
    @group.user_id = current_user.id
    if @group.save
      flash[:success] = 'Group successfully added'
      redirect_to groups_path
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end
end
