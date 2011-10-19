class CorpsController < ApplicationController
  # GET /corps
  # GET /corps.json
  def index
    @corps = Corp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @corps }
    end
  end

  # GET /corps/1
  # GET /corps/1.json
  def show
    @corp = Corp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @corp }
    end
  end

  # GET /corps/new
  # GET /corps/new.json
  def new
    @corp = Corp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @corp }
    end
  end

  # GET /corps/1/edit
  def edit
    @corp = Corp.find(params[:id])
  end

  # POST /corps
  # POST /corps.json
  def create
    @corp = Corp.new(params[:corp])

    respond_to do |format|
      if @corp.save
        format.html { redirect_to @corp, notice: 'Corp was successfully created.' }
        format.json { render json: @corp, status: :created, location: @corp }
      else
        format.html { render action: "new" }
        format.json { render json: @corp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /corps/1
  # PUT /corps/1.json
  def update
    @corp = Corp.find(params[:id])

    respond_to do |format|
      if @corp.update_attributes(params[:corp])
        format.html { redirect_to @corp, notice: 'Corp was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @corp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corps/1
  # DELETE /corps/1.json
  def destroy
    @corp = Corp.find(params[:id])
    @corp.destroy

    respond_to do |format|
      format.html { redirect_to corps_url }
      format.json { head :ok }
    end
  end
end
