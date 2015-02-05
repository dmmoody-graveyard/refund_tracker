require 'spec_helper'

describe Provider do
  it{ should have_many :physicians }
end