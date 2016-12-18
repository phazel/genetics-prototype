class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def show
    @creature = Creature.find(params[:id])
  end

  def new
  end

  def create
    @creature = Creature.new(creature_params)

    @creature.save
    redirect_to @creature
  end

  private
  def creature_params
    params.require(:creature).permit(:name, :text)
  end
end
