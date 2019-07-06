class TopController < ApplicationController
  def index
    User.all
  end
end
