class NotesController < ApplicationController

	def index
		@notes = Note.all.order('created_at DESC')
	end

	def show
		@note = Note.find(params[:id])
		@notes = Note.order("created_at desc").limit(4).offset(1)
	end

	private
		def note_params
			params.require(:note).permit(:title, :content)
		end	
			
end
