class Store < ActiveRecord::Base
#The Store model inherits from ActiveRecord::Base, which means it automatically connects to the stores table. You don’t need to add attributes explicitly in the class as they are mapped to the database columns automatically.

has_many :employees

# Validations
validates :name, presence: true, length: { minimum: 3 }
validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
validate :must_carry_mens_or_womens_apparel

private

# Custom validation method
def must_carry_mens_or_womens_apparel
  unless mens_apparel || womens_apparel
    errors.add(:base, "Stores must carry at least one of the men's or women's apparel")
  end
end
end

