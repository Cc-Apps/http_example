class HttpClient
  def self.make_http_request(&block)
    BW::HTTP.get("https://api.github.com/users/casper91") do |response|
      block.call(BW::JSON.parse(response.body)[:login])
    end
  end
end