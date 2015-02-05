require 'spec_helper'

describe Physician do
  it{ should belong_to :provider }
end