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

  def clone
    @existing_creature = Creature.find(params[:id])

    @creature = Creature.new({
      shape: @existing_creature.shape
    })
    @creature.save
    render 'new'
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

  def destroy
    @creature = Creature.find(params[:id])
    @creature.destroy

    redirect_to creatures_path
  end

  private
  def creature_params
    params.require(:creature).permit(:name)
  end
end
