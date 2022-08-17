class AccountInfo < BaseService
  attr_accessor :params
  def initialize(params = {})
    @params = params
  end

  # To get the account information
  def get_account_info
    begin
      account = Account.find_by_id(params[:id])
      return not_found if account.nil?
      success(result: account.as_json)
    rescue Exception => e
      error
    end
  end

end