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
    redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @service.destroy
    @service.destroy
    redirect_to services_path
  end

    def test_ping
    require 'json'
    require 'open-uri'

    url = 'https://www.facebook.com/platform/api-status/'
    fb_status_serialized = open(url).read
    fb_status = JSON.parse(fb_status_serialized)

    if fb_status['current']['health'] == 1
      test_ping = true
    else
      test_ping = false
    end
  end

private
    def set_service
      @service = Service.find(params[:id])
    end
    def service_params
      params.require(:service).permit(:name, :web_api, :json_path)
    end

end
