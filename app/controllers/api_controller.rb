require 'pg'

class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  DB = PG.connect('ec2-23-21-171-25.compute-1.amazonaws.com','5432',nil,nil,'d7snv8turfs4ff','ohyxckuotpgwbl','ab939bfbfdd30e5a78e55a3250ee2dc07bc3c5aa05362939b1300c31a0be206a')

  def initialize

  end

  def index
    lines = Line.order('id')
    render json: lines
  end

  def show
    lines = Line.where(coche: params[:id])
    render json: lines
  end

  def create
    line = Line.new(line_params)

    if line.save
      lines = Line.where(coche: "false")
      render json: lines
      ##render json: line
    end
  end

  def destroy
    line = Line.find(params[:id])
    line.destroy
  end

  def update
    line = Line.find(params[:id])
    if line.update_attributes(line_params)
      render json: line
    end
  end


  def line_params
    params.permit(:text,:coche)
  end

  private :line_params

end
