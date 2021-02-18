require 'json'

class UsersController < ApplicationController
  include GithubHelper

  def index
    since = params[:since]
    response = GithubHelper.all(since)
    render json: { data: JSON.parse(response) }
  end

  def details
    username = params[:user_id]
    response = GithubHelper.details(username)
    render json: { data: JSON.parse(response) }
  end

  def repos
    username = params[:user_id]
    response = GithubHelper.repos(username)
    render json: { data: JSON.parse(response) }
  end
end
