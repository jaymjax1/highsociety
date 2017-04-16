class GroupsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_group, only: [:show, :edit, :update, :destroy]

	def index
		@groups = Group.all.order('created_at ASC')
		if params[:search]
			@groups = Group.search(params[:search]).order("created_at ASC")
		else
			@groups = Group.all.order('created_at ASC')
		end
	end

	def show
		@groups = Group.all
		@group = Group.find(params[:id])
	end


	def index
		@groups = Group.all.order('created_at ASC')
		if params[:search]
			@groups = Group.search(params[:search]).order("created_at ASC")
		else
			@groups = Group.all.order('created_at ASC')
		end
	end

	def mygroup
		@user = User.find (params[:id])
	end


	def new
		@group = Group.new
	end

	def create
		@group = Group.new(group_params)

		respond_to do |format|
			if @group.save
				format.html { redirect_to @group, notice: 'Group was successfully created.' }
				format.json { render :show, status: :created, location: @group }
			else
				format.html { render :new }
				format.json { render json: @group.errors, status: :unprocessable_entity }
			end
		end
	end


	def edit
		@group = Group.find(params[:id])
	end


	def update
		respond_to do |format|
			if @group.update(group_params)
				format.html { redirect_to @group, notice: 'Group was successfully updated.' }
				format.json { render :show, status: :ok, location: @group }
			else
				format.html { render :edit }
				format.json { render json: @group.errors, status: :unprocessable_entity }
			end
		end
	end

	def join_group
		@group = Group.find(params[:id])
		current_user.groups << @group
		redirect_to :back, notice: 'Joined!'
	end


	private
# Use callbacks to share common setup or constraints between actions.
def set_group
	@group = Group.find(params[:id])
end

# Never trust parameters from the scary internet, only allow the white list through.
def group_params
	params.require(:group).permit(:name, :description, :location, :owner, :background_image)
end

end
