class WelcomeController < ApplicationController
  def index
    render json: "justin".to_json
  end
end
