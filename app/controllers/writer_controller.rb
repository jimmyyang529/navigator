class WriterController < ApplicationController

  private

  def post_params
    params.require(:writer).permit(:name, :Introduction, :photo, :experience)
  end

end
