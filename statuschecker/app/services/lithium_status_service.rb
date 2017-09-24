require 'open-uri'

class LithiumStatusService
  @base_api_url = "http://kf381dthp5rd.statuspage.io/api/v2/status.json"

  def self.status
      json_response = JSON.parse(open(@base_api_url).read)
      @status = json_response['status']['indicator']
  end

end
