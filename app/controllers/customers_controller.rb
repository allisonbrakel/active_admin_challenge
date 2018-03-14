class CustomersController < ApplicationController
  # GET /
  def index
    @customers = Customer.all
  end

  # GET /customers/missing_email
  def alphabetized
    @customers = Customer.order(:full_name)
  end

  # GET /customers/alphabetized
  def missing_email
    @customers =  Customer.where('email == ""')
  end
end
