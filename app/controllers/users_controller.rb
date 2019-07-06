class UsersController < ApplicationController

  # userが少ないうちは全ユーザーを見せる
  # TODO pagination
  def index
    @all_users = User.all
  end

  # TODO pagination
  # TODO use form object?
  def show
    @user = User.find(params[:id])
    @followings = @user.following
    @followers = @user.followers
    @my_memo = @user.memos
    # @all_memos = Memo.where(user: )
  end
end
