class DataController < ApplicationController

  def index
    # Get the data from the database
  end

  def create
    # Create a new data object
  end

  private

  def data_params
    params.require(:data).permit(:name, :code, :value)
  end
end
