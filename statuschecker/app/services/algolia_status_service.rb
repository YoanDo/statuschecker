require 'open-uri'

class AlgoliaStatusService
  @base_api_url = "https://status.algolia.com/1/status/c4-fr"

  def self.status
      json_response = JSON.parse(open(@base_api_url).read)
      @status = json_response['status']['c4-fr']
  end

end
