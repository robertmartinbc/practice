class AssignmentsController < ApplicationController
  def index
  	@assignments = Assignment.all
  end

  def show
  	@assignment = Assignment.find(params[:id])
  end

  def new
  	@assignment = Assignment.new
  end

  def edit
  end

  def create
  	@assignment = Assignment.new(params[:assignment])  	
  	if @assignment.save
  		flash[:notice] = "Assignment was saved."
  		redirect_to @assignment
  	else
  		flash[:error] = "There was an error saving the assignment. Please try again."
  		render :new
  	end
  end
end
