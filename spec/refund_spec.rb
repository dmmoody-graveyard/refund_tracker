require 'spec_helper'

describe Refund do
  it{ should belong_to :responsible }
  it{ should belong_to :reason }
  it{ should belong_to :claimant }
  it{ should belong_to :physician }
  it{ should have_many :cancellation }
  it{ should have_many :letter }
  it{ should have_many :receivable }
  it{ should have_many :legal }
  it{ should have_many :call }
end