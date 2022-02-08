class NotesController < ApplicationController
  def index
  end

  def create
    @note = Note.new 
  end

  def create
    @note = Note.new(params[:note])
    
    if @note.save
      redirect_to @note
    else
      render "new"
    end   
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def note_params
    params.require(:note)
      .permit(
        :text
      )
  end
end
