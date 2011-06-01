class CoolsController < ApplicationController
  # GET /cools
  # GET /cools.json
  def index
    @cools = Cool.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cools }
    end
  end

  # GET /cools/1
  # GET /cools/1.json
  def show
    @cool = Cool.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cool }
    end
  end

  # GET /cools/new
  # GET /cools/new.json
  def new
    @cool = Cool.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cool }
    end
  end

  # GET /cools/1/edit
  def edit
    @cool = Cool.find(params[:id])
  end

  # POST /cools
  # POST /cools.json
  def create
    @cool = Cool.new(params[:cool])

    respond_to do |format|
      if @cool.save
        format.html { redirect_to @cool, notice: 'Cool was successfully created.' }
        format.json { render json: @cool, status: :created, location: @cool }
      else
        format.html { render action: "new" }
        format.json { render json: @cool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cools/1
  # PUT /cools/1.json
  def update
    @cool = Cool.find(params[:id])

    respond_to do |format|
      if @cool.update_attributes(params[:cool])
        format.html { redirect_to @cool, notice: 'Cool was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cools/1
  # DELETE /cools/1.json
  def destroy
    @cool = Cool.find(params[:id])
    @cool.destroy

    respond_to do |format|
      format.html { redirect_to cools_url }
      format.json { head :ok }
    end
  end
end
