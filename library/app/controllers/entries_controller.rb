class EntriesController < ApplicationController
  def index
    @entries = Entry.order("created_at DESC")
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to root_path, notice: "Dziękujemy za wpis!"
    else
      render new_entry_path
    end
  end
	
  private

  def entry_params
    params.require(:entry).permit(:name, :comment, :avatar_url)
  end

end

