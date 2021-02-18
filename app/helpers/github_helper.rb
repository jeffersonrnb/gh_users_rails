require 'rest-client'

module GithubHelper
  @server = Rails.configuration.application[:GITHUB_HOST]

  def self.all(since = nil)
    return RestClient.get("#{@server}/users") if since.nil?
    RestClient.get("#{@server}/users", params: { since: since })
  end

  def self.details(username)
    RestClient.get("#{@server}/users/#{username}")
  end

  def self.repos(username)
    RestClient.get("#{@server}/users/#{username}/repos")
  end
end
