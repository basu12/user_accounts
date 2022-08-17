class Account < ApplicationRecord
  belongs_to :user

  def as_json()
    {
      attributes: {
          id: self.id,
          user_id: self.user_id,
          name: self.name,
          balance: self.balance
      }
    }
  end
end
