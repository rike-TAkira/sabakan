class ServicesController < ApplicationController
  respond_to :html

  def index
    @services = Service.order(:name)
    respond_with @services
  end

  def show
    @service = Service.find_by_name(params[:id])
    respond_with @service
  end

  def new
    @service = Service.new
    respond_with @service
  end

  def edit
    @service = Service.find_by_name(params[:id])
    respond_with @service
  end

  def create
    @service = Service.new(params[:service])
    if @service.save
      flash[:notice] = "Service successfully created."
    end
    respond_with @service
  end

  def update
    @service = Service.find_by_name(params[:id])
    if @service.update_attributes(params[:service])
      flash[:notice] = "Service successfully updated."
    end
    respond_with @service
  end

  def destroy
    @service = Service.find_by_name(params[:id])
    @service.destroy
    respond_with @service
  end
end
