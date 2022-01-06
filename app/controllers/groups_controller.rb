class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params.require(:group).permit(:name))
    @group.user_id = current_user.id
    @group.icon = "https://cdn2.iconfinder.com/data/icons/miscellaneous-6-solid/128/demo_exhibition_demonstration-512.png"
    if @group.save
      flash[:success] = "Group successfully added"
      redirect_to groups_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
end
