class PagesController < ApplicationController
  def home
    if current_user
      redirect_to tasks_path
    end
  end
s
  def about
  end
end
