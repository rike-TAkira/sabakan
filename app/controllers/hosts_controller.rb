class HostsController < ApplicationController
  respond_to :html

  def index
    @hosts = Host.all
    respond_with @hosts
  end

  def show
    @host = Host.find_by_name(params[:id])
    respond_with @host
  end

  def new
    @host = Host.new
    respond_with @host
  end

  def edit
    @host = Host.find_by_name(params[:id])
    respond_with @host
  end

  def create
    @host = Host.new(params[:host])
    if @host.save
      flash[:notice] = "Host successfully created."
    end
    respond_with @host
  end

  def update
    @host = Host.find_by_name(params[:id])
    if @host.update_attributes(params[:host])
      flash[:notice] = "Host successfully updated."
    end
    respond_with @host
  end

  def destroy
    @host = Host.find_by_name(params[:id])
    @host.destroy
    respond_with @host
  end
end
