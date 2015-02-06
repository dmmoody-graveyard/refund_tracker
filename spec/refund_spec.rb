require 'spec_helper'

describe Refund do
  it{ should belong_to :responsible }
  it{ should belong_to :reason }
  it{ should belong_to :claimant }
  # it{ should have_one :physicians }
  # it{ should belong_to :cancellations }
  # it{ should belong_to :letters }
  # it{ should belong_to :receivables }
  # it{ should belong_to :legals }
  # it{ should belong_to :calls }
end