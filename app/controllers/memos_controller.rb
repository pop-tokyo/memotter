class MemosController < ApplicationController
  def create
    memo = Memo.new(params[:content])
    if memo.save
      redirect_to action: 'show', notice: "successfully shared. nice one!"
    else
      redirect_to action: 'show', alert: "sharing failed :(("
    end
  end
end
