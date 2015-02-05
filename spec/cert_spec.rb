require 'spec_helper'

describe Cert do
  it{ should have_many :claimants }
  it{ should belong_to :case }
end