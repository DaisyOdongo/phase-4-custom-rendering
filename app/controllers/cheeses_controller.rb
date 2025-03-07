class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  # GET /cheeses/:id
  def show
    if cheese = Cheese.find_by(id: params[:id])
      render json: cheese, except: [:created_at, :updated_at], methods: [:summary]
    else
      render json: {error: 'Cheese not found'}, status: :not_found
   end
 
    end

  
end
