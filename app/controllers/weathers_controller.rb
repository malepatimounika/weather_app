class WeathersController < ApplicationController
  def index
    @weathers = Weather.all
  end

  def new
    @weather = Weather.new
  end

  def create
    @weather = Weather.new(weather_params)
    @weather.rain = @weather.predict_rain

    if @weather.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def weather_params
    params.require(:weather).permit(:temp, :humidity, :wind)
  end
end  
