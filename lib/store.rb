class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :mens_and_womens_apparel_cannot_be_falsy

  def mens_and_womens_apparel_cannot_be_falsy
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "AND")
      errors.add(:womens_apparel, "cannot be false")
    end
  end
end
