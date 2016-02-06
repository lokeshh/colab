class AssignmentsController < ApplicationController
  
  def display
    @assignment = Assignment.new
  end
  
  def upload
    @assignment = Assignment.create params[:assignment]
  end
end
