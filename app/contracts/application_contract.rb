class ApplicationContract
  include ActiveModel::Model
  include Virtus.model

  def valid!
    fail BadRequestError.new(self.errors.full_messages.first) unless self.valid?
  end
end
