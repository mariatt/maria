class PeopleController < ApplicationController
  before_action :find_person, only: [:show, :edit, :update]

  def index
  	@people=Person.all
  end

  def show
  	
  end

  def new
  	@person=Person.new
  end

  def create
  	@person=Person.new(permitted_paramaters)
 	if @person.save
  		redirect_to people_path
  	else
  		render action: :new
  	end
  end

  def edit
  	
  end

  def update
  	if @person.update(permitted_paramaters)
      redirect_to people_path
  	else
  		render action: :edit
  	end
  end

  protected

  def find_person
    @person=Person.find(params[:id])
  end

  def permitted_paramaters
    params.require(:person).permit(:first_name, :last_name, :dob, :biography)
  end



end
