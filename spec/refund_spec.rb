require 'spec_helper'

describe Refund do
  has_many :responsibles
  has_many :reasons
  has_many :cancellations
  has_many :letters
  had_many :receivables
  has_one :legals
  has_many :calls
  has_and_belongs_to_many :claimants
  has_and_belongs_to_many :physicians
end