class Refund < ActiveRecord::Base
  belongs_to :responsible
  belongs_to :reason
  belongs_to :claimant
  # has_one :physicians
  # belongs_to :cancellations
  # belongs_to :letters
  # belongs_to :receivables
  # belongs_to :legals
  # belongs_to :calls
end