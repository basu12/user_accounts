class UserInfo < BaseService
	attr_accessor :params
	def initialize(params = {})
		@params = params
	end

	# To get the user information
	def get_user_info
		begin
			user = User.find_by_id(params[:id])
			return not_found if user.nil?
			success(result: user.as_json)
		rescue Exception => e
			error
		end
	end

	def get_accounts
		begin
			accounts = Account.where(user_id: params[:id])
			return not_found if accounts.nil?
			success(result: accounts.as_json)
		rescue Exception => e
			error
		end
	end
end