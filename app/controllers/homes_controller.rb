class HomesController < ApplicationController
  def top
  end

  def about
  end

  def after_sign_out_path_for(resource)
    flash[:notice] ='Signed out successfully.'
  end
end
