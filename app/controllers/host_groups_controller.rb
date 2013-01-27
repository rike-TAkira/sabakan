class HostGroupsController < ApplicationController
  respond_to :html

  def index
    @host_groups = HostGroup.order(:name)
    respond_with @host_groups
  end

  def show
    @host_group = HostGroup.find_by_name(params[:id])
    respond_with @host_group
  end

  def new
    @host_group = HostGroup.new
    respond_with @host_group
  end

  def edit
    @host_group = HostGroup.find_by_name(params[:id])
    respond_with @host_group
  end

  def create
    @host_group = HostGroup.new(params[:host_group])
    if @host_group.save
      flash[:notice] = "Host group successfully created."
    end
    respond_with @host_group
  end

  def update
    @host_group = HostGroup.find_by_name(params[:id])
    if @host_group.update_attributes(params[:host_group])
      flash[:notice] = "Host group successfully updated."
    end
    respond_with @host_group
  end

  def destroy
    @host_group = HostGroup.find_by_name(params[:id])
    @host_group.destroy
    respond_with @host_group
  end
end
