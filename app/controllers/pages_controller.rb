class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home,:home2,:team, :mention]
  def home
  end
  def home2
  end
  def mention
  end
  def team
  end
  def contest
  end
  def calendar
  end
  def index
    if current_user.email == "nelly@gmail.com"
      @users = User.all
    else
      redirect_to authenticated_root_path
    end
  end

end
