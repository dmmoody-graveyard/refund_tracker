class Claimant < ActiveRecord::Base
  belongs_to :cert
  has_many :refund
end