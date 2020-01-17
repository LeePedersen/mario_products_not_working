class Review < ApplicationRecord
  belongs_to :product

  before_save(:titleize_reviewer_name)

  private
    def titleize_reviewer_name
      self.author = self.author.titleize
    end
end
