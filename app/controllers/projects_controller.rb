class ProjectsController < ApplicationController

	def index
	end

	def create
		@project = Project.new(project_params)

    	respond_to do |format|
	      if @project.save
	        format.html { redirect_to @project, notice: 'project was successfully created.' }
	        format.json { render action: 'show', status: :created, location: @project }
	      else
	        format.html { render action: 'new' }
	        format.json { render json: @project.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def show
		@project = Project.find(params[:id])
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])

    	respond_to do |format|
	      if @project.update_attributes(project_params)
	        format.html { redirect_to @project, notice: 'project was successfully created.' }
	        format.json { render action: 'show', status: :created, location: @project }
	      else
	        format.html { render action: 'new' }
	        format.json { render json: @project.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def new
		@project = Project.new
	end

	def destroy
	end

	private

	def project_params
	      params.require(:project).permit(:title, :description, :total_fund_ask, :founders, :equity_offered)
	end

end
