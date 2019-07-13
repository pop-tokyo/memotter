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
    @all_memos = Memo.where(user: @followings.pluck(:user_id) << @user.id)
    # @new_memo = @user.memos.build
  end
end
