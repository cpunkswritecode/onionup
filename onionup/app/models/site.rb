require 'socksify/http'
require 'byebug'
class Site < ApplicationRecord
  belongs_to :user

  def ping
    uri = URI.parse(self.url)
    # if !uri.host.nil? && uri.path
      begin
        Net::HTTP.SOCKSProxy('127.0.0.1', 9050).start(uri.host, uri.port) do |http|
          return true
        end
          # p http.get(uri.path)
        # return true
      rescue
        puts "Host unreachable error"
      end
    # end
    false
  end
end
