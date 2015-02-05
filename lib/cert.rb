class Cert < ActiveRecord::Base
  has_many :claimants
  belongs_to :case
end