class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def update
    @actor = Actor.find(params[:id])
    if @actor.update_attributes(params[:actor])
    redirect_to @actor, notice: "Successfully updated the actor profile!"
    else
    render action: 'edit', alert: "Failed to udpate the actor profile :("
    end
  end

  def create
    @actor = Actor.new(params[:actor])
    if @actor.save
      redirect_to @actor, notice: "Successfully added the new actor to our database!"
    else
      render action: 'new', alert: "Failed to add the actor to our database :("
    end
  end

  def new
    @actor = Actor.new
  end

  def destroy
    @actor = Actor.find(params[:id])
    if @actor.destroy
      redirect_to actors_path, notice: "Successfully deleted the actor!"
    else
      redirect_to @actor
  end
end
end