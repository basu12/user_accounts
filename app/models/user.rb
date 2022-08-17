class User < ApplicationRecord
  has_many :accounts, dependent: :destroy

  def as_json(options = {})
    {
      attributes: {
        id: self.id,
        name: self.name,
        account_ids: self.accounts&.pluck(:id)
      }
    }
  end
end
