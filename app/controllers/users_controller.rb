class UsersController < ApplicationController
  
  def show
    payload = UserInfo.new(params).get_user_info
    render status: payload[:status], json: payload[:result]
  end

  #get the accoutn details
  def accounts
    payload = UserInfo.new(params).get_accounts
    render status: payload[:status], json: payload[:result]
  end
end
