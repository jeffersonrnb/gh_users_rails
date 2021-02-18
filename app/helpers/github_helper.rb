require 'rest-client'

module GithubHelper
  @server = Rails.configuration.application[:GITHUB_HOST]

  def self.all(since = nil)
    begin
      return RestClient.get("#{@server}/users") if since.nil?
      RestClient.get("#{@server}/users", params: { since: since })
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end

  def self.details(username)
    begin
      RestClient.get("#{@server}/users/#{username}")
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end

  def self.repos(username)
    begin
      RestClient.get("#{@server}/users/#{username}/repos")
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end
end
