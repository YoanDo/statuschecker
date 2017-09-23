class ServicesController < ApplicationController

  before_action :set_service, only: [:edit, :show, :destroy]

  def index
    @services = Service.all
    @pings = Ping.all
  end

  def new
    @service = Service.new
  end

  def edit
  end

  def show
  end

  def create
    @service = Service.new(service_params)
    @service.save
      if @service.save
    redirect_to services_path
    else
      render :new
    end
  end

  def destroy
    @service.destroy
    @service.destroy
    redirect_to services_path
  end

private
    def set_service
      @service = Service.find(params[:id])
    end
    def service_params
      params.require(:service).permit(:name, :web_api, :json_path)
    end

end
