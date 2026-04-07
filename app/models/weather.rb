class Weather < ApplicationRecord
  def predict_rain
    # Simple logic (you can improve later)
    if humidity > 75 && temp < 30
      true
    else
      false
    end
  end
end
