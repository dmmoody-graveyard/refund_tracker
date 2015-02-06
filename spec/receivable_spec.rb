require 'spec_helper'

describe Receivable do
  it{ should belong_to :refund }
end