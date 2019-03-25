class AjaxController < ApplicationController
layout 'ajax'
  def index
  end

  def data
  	@ajax_data = Person.fins 1
  end
end
