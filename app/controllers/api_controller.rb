require 'pg'

class ApiController < ApplicationController

  DB = PG.connect('ec2-23-21-171-25.compute-1.amazonaws.com','5432',nil,nil,'d7snv8turfs4ff','ohyxckuotpgwbl','ab939bfbfdd30e5a78e55a3250ee2dc07bc3c5aa05362939b1300c31a0be206a')

  def initialize

  end

  def all
    li = listAll
    render json: li
  end

  def one
    li = listAll
    render json: li[0]
  end

  def two
    li = listAll
    render json: li[1]
  end

  def listAll
    DB.exec("SELECT * FROM liste")
  end
end
