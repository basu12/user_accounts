class AccountsController < ApplicationController
  
  def show
    payload = AccountInfo.new(params).get_account_info
    render status: payload[:status], json: payload[:result]
  end
  
end
