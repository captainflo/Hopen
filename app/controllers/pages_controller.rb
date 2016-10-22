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
end
