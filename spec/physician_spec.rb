require 'spec_helper'

describe Physician do
  it{ should belong_to :provider }
  it{ should have_many :refund }
end