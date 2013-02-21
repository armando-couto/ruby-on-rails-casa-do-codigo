class QuartosController < ApplicationController
  # GET /quartos
  # GET /quartos.json
  def index
    @quartos = Quarto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quartos }
    end
  end

  # GET /quartos/1
  # GET /quartos/1.json
  def show
    @quarto = Quarto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quarto }
    end
  end

  # GET /quartos/new
  # GET /quartos/new.json
  def new
    @quarto = Quarto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quarto }
    end
  end

  # GET /quartos/1/edit
  def edit
    @quarto = Quarto.find(params[:id])
  end

  # POST /quartos
  # POST /quartos.json
  def create
    @quarto = Quarto.new(params[:quarto])

    respond_to do |format|
      if @quarto.save
        format.html { redirect_to @quarto, notice: 'Quarto was successfully created.' }
        format.json { render json: @quarto, status: :created, location: @quarto }
      else
        format.html { render action: "new" }
        format.json { render json: @quarto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quartos/1
  # PUT /quartos/1.json
  def update
    @quarto = Quarto.find(params[:id])

    respond_to do |format|
      if @quarto.update_attributes(params[:quarto])
        format.html { redirect_to @quarto, notice: 'Quarto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quarto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quartos/1
  # DELETE /quartos/1.json
  def destroy
    @quarto = Quarto.find(params[:id])
    @quarto.destroy

    respond_to do |format|
      format.html { redirect_to quartos_url }
      format.json { head :no_content }
    end
  end
end
