class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home,:team, :mention]
  def home
  end
  def mention
  end
  def team
  end
  def contest
  end
  def index
    if current_user.email == "bob@gmail.com"
      @users = User.all
    else
      redirect_to authenticated_root_path
    end
  end

end
