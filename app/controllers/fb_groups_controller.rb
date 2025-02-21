class FbGroupsController < ApplicationController
  before_action :set_fb_group, only: %i[ show edit update destroy ]

  # GET /fb_groups or /fb_groups.json
  def index
    @fb_groups = FbGroup.all
  end

  # GET /fb_groups/1 or /fb_groups/1.json
  def show
  end

  # GET /fb_groups/new
  def new
    @fb_group = FbGroup.new
  end

  # GET /fb_groups/1/edit
  def edit
  end

  # POST /fb_groups or /fb_groups.json
  def create
    @fb_group = FbGroup.new(fb_group_params.merge(user: current_user))

    respond_to do |format|
      if @fb_group.save
        format.html { redirect_to @fb_group, notice: "Fb group was successfully created." }
        format.json { render :show, status: :created, location: @fb_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fb_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fb_groups/1 or /fb_groups/1.json
  def update
    respond_to do |format|
      if @fb_group.update(fb_group_params)
        format.html { redirect_to @fb_group, notice: "Fb group was successfully updated." }
        format.json { render :show, status: :ok, location: @fb_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fb_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fb_groups/1 or /fb_groups/1.json
  def destroy
    @fb_group.destroy!

    respond_to do |format|
      format.html { redirect_to fb_groups_path, status: :see_other, notice: "Fb group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fb_group
      @fb_group = FbGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fb_group_params
      params.require(:fb_group).permit(:title, :description, :user_id)
    end
end
