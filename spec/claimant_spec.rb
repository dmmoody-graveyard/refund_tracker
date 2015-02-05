require 'spec_helper'

describe Claimant do
  it{ should belong_to :cert }
end