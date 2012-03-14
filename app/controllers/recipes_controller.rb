class RecipesController < ApplicationController
  before_filter :get_drink
  
  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = @drink.recipes.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipes }
    end
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    @recipe = @drink.recipes.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe }
    end
  end

  # GET /recipes/new
  # GET /recipes/new.json
  def new
    @recipe = @drink.recipes.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe }
    end
  end

  # GET /recipes/1/edit
  def edit
    @recipe = @drink.recipes.find(params[:id])
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = @drink.recipes.new(params[:recipe])

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to edit_drink_path(@drink), notice: 'Recipe was successfully created.' }
        format.json { render json: @recipe, status: :created, location: @recipe }
      else
        format.html { render action: "new" }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipes/1
  # PUT /recipes/1.json
  def update
    @recipe = @drink.recipes.find(params[:id])

    respond_to do |format|
      if @recipe.update_attributes(params[:recipe])
        format.html { redirect_to edit_drink_path(@drink), notice: 'Recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe = @drink.recipes.find(params[:id])
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to drink_recipes_url @drink }
      format.json { head :no_content }
    end
  end
  
  private
  
  def get_drink
    @drink = Drink.find(params[:drink_id])
  end
end
