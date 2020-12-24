class IndexController < ApplicationController
  def index
    @index = Manegement.all.order(year:"DESC", month:"DESC")
  end

  def create
    #binding.pry
    @index = Manegement.new(prototype_params)
    if @index.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @index = Manegement.find(params[:id])
    @index.destroy
    redirect_to root_path
  end

end

private

def prototype_params
  params.permit(:year, :month, :income, :takehome, :consumption)
end