class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def show
    @creature = Creature.find(params[:id])
  end

  def new
    @creature = Creature.new
  end

  def edit
    @creature = Creature.find(params[:id])
  end

  def create
    @creature = Creature.new(creature_params)

    if @creature.save
      redirect_to @creature
    else
      render 'new'
    end
  end

  def update
    @creature = Creature.find(params[:id])

    if @creature.update(creature_params)
      redirect_to @creature
    else
      render 'edit'
    end
  end

  private
  def creature_params
    params.require(:creature).permit(:name, :text)
  end
end
