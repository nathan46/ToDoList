require 'pg'

class TestController < ApplicationController

  attr_accessor :db

  def initialize()
    db = PG.connect(host: 'ec2-23-21-171-25.compute-1.amazonaws.com', database: 'd7snv8turfs4ff', user: 'ohyxckuotpgwbl', port: '5432', password: 'ab939bfbfdd30e5a78e55a3250ee2dc07bc3c5aa05362939b1300c31a0be206a')
  end



end
