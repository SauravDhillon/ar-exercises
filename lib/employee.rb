class Employee < ActiveRecord::Base
 belongs_to :store #employees table is connected
 # to store table using store_id in employee

 # Validations
 validates :first_name, :last_name, presence: true
 validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
 validates :store, presence: true
end

