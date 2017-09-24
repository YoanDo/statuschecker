require 'open-uri'

class FacebookStatusService
  @base_api_url = "https://www.facebook.com/platform/api-status/"

  def self.status
      json_response = JSON.parse(open(@base_api_url).read)
      @status = json_response["current"]["health"]
      # Boolean status
      # @status = json_response["current"]["subject"]
  end

end
