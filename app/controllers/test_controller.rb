class TestController < ApplicationController

  def bootstrap
  end

  def page
    @page_id = params[:page_id]
  end
  
end
