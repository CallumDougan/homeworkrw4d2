class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def new

  end

  def show
    
  end

end