class SectionsController < ApplicationController

	def index
		@sections = Section.all()
	end

	def new
		@section = Section.new
	end

	def edit
		@section = Section.find(params[:id])
	end

	def show
		@section = Section.find(params[:id])
	end

	def create
		@section = Section.new(params.require(:section).permit(:name, :outlets))
		if @section.save
			redirect_to @section
	end

	def update
		@section = Section.find(params[:id])
		if @section.update(params.require(:section).permit(:name, :outlets))
			redirect_to @section
		end
	end
end
