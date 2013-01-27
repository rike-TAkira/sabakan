class RolesController < ApplicationController
  respond_to :html

  def index
    @roles = Role.order(:name)
    respond_with @roles
  end

  def show
    @role = Role.find_by_name(params[:id])
    respond_with @role
  end

  def new
    @role = Role.new
    respond_with @role
  end

  def edit
    @role = Role.find_by_name(params[:id])
    respond_with @role
  end

  def create
    @role = Role.new(params[:role])
    if @role.save
      flash[:notice] = "Role successfully created."
    end
    respond_with @role
  end

  def update
    @role = Role.find_by_name(params[:id])
    if @role.update_attributes(params[:role])
      flash[:notice] = "Role successfully updated."
    end
    respond_with @role
  end

  def destroy
    @role = Role.find_by_name(params[:id])
    @role.destroy
    respond_with @role
  end
end
