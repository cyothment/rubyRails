class SubjectsController < ApplicationController
  
  def index
    @subjects = Subject.sorted
  end

  def show
    #Display a specific object instance passed by a parameter
    @subject = Subject.find(params[:id])
  end

  def new
    #Instantiate new variable of the object
    @subject = Subject.new
  end

  def create
    #Instantiate a new object using form parameters
    @subject = Subject.new(subject_params)
    #Save the object
    if @subject.save
    #If save succeeds, redirect to the index action
      flash[:notice] = "Subject '#{@subject.name}' created successfully."
      redirect_to(subjects_path)
    #If save fails, redisplay the form so user can fix problems
    else
      render('new')
    end
  end

  def edit
    #Display a specific object instance passed by a parameter
    @subject = Subject.find(params[:id])
  end

  def update
    #Instantiate a new object using form parameters
    @subject = Subject.find(params[:id])
    #Save the object
    if @subject.update_attributes(subject_params)
    #If save succeeds, redirect to the index action
      flash[:notice] = "Subject updated successfully."
      redirect_to(subject_path(@subject))
    #If save fails, redisplay the form so user can fix problems
    else
      render('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    flash[:notice] = "Subject '#{@subject.name}' deleted successfully."
    redirect_to(subjects_path)
  end

  private

  #Declares the list of variables within a subject that are available for POST 
  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end

end
