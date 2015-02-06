require 'spec_helper'

describe Letter do
  it{ should belong_to :refund }
end