class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def show
    country_finder
  end

  def edit
    country_finder
  end

  def update
    country_finder.update(country_params)
    redirect_to(countries_path)
  end

  def create
    Country.create(country_params)
    redirect_to(countries_path)
  end

  def delete
    country_finder.destroy
    redirect_to(countries_path)
  end

  private
  def country_params
    params.require(:country).permit(:name, :flag, :size, :population, :language, :travel_advice)
  end

  def country_finder
    @country = Country.find(params[:id])
  end

end