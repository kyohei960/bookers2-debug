class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only:[:edit, :update]
  def index
    @book = Book.new
    @groups = Group.all
  end

  def show
  end

  def edit
  end

  def new
  end
end
