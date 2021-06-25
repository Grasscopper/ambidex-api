class WelcomeController < ApplicationController
  def index
    render json: "Ambidex Game API".to_json
  end
end
