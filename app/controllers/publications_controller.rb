class PublicationsController < ApplicationController
   before_action :find_publication, only: [:show, :edit, :update]

    def index
        @publications=Publication.all
    end

    def show
    
  end

  def new
    @publication=Publication.new
  end

  def create
    @publication=Publication.new(permitted_paramaters)
    if @publication.save
        redirect_to publications_path
    else
        render action: :new
    end
  end

  def edit
    
  end

  def update
    if @publication.update(permitted_paramaters)
      redirect_to publications_path
    else
        render action: :edit
    end
  end

  protected

  def find_publication
    @publication=Publication.find(params[:id])
  end

  def permitted_paramaters
    params.require(:publication).permit(:title, :year, :person_id)
  end

end