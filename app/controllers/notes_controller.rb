class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new(params[:text])
  end

  def create
    @note = Note.new(note_params)
    
    if @note.save
      redirect_to notes_new_url
    else
      render "new"
    end   
  end

  def update
  end

  def destroy
  end

  private

  def note_params
    params.require(:note).permit(:text)
  end
end
