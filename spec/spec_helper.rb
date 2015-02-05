ENV['RACK_ENV'] = 'test'

require 'bundler/setup'
Bundler.require :default, :test

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

Rspec.configure do |config|
  config.after :each do
    
    Case.all.each do |cases|
      cases.destroy
    end

    Cert.all.each do |cert|
      cert.destroy
    end

    Claimant.all.each do |claimant|
      claimant.destroy
    end

  end
end