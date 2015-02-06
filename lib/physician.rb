class Physician < ActiveRecord::Base
  belongs_to :provider
  has_many :refund
end