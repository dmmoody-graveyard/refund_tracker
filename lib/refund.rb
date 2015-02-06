class Refund < ActiveRecord::Base
  belongs_to :responsible
  belongs_to :reason
  belongs_to :claimant
  belongs_to :physician
  has_many :cancellation
  has_many :letter
  has_many :receivable
  has_many :legal
  has_many :call
end