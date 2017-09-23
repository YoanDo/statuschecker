class PingController < ApplicationController
before_action :set_ping, only: [ :create ]

  def index
    @pings = Ping.all
  end

  def new
    @service = Ping.new
  end

  def create
    @ping = Ping.new(ping_params)
    @ping.service = @service
    @ping.up = test_ping
    @ping.save
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

  def ping_params
    params.require(:ping).permit(:service_id, :up)
  end

  def set_ping
    @ping = Ping.find(params[:ping_id])
  end
end
