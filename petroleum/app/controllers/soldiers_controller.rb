class SoldiersController < ApplicationController
  # GET /soldiers
  # GET /soldiers.json
  def index
    @soldiers = Soldier.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @soldiers }
    end
  end

  # GET /soldiers/1
  # GET /soldiers/1.json
  def show
    @soldier = Soldier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @soldier }
    end
  end

  # GET /soldiers/new
  # GET /soldiers/new.json
  def new
    @soldier = Soldier.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @soldier }
    end
  end

  # GET /soldiers/1/edit
  def edit
    @soldier = Soldier.find(params[:id])
  end

  # POST /soldiers
  # POST /soldiers.json
  def create
    @soldier = Soldier.new(params[:soldier])

    respond_to do |format|
      if @soldier.save
        format.html { redirect_to @soldier, notice: 'Soldier was successfully created.' }
        format.json { render json: @soldier, status: :created, location: @soldier }
      else
        format.html { render action: "new" }
        format.json { render json: @soldier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /soldiers/1
  # PUT /soldiers/1.json
  def update
    @soldier = Soldier.find(params[:id])

    respond_to do |format|
      if @soldier.update_attributes(params[:soldier])
        format.html { redirect_to @soldier, notice: 'Soldier was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @soldier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soldiers/1
  # DELETE /soldiers/1.json
  def destroy
    @soldier = Soldier.find(params[:id])
    @soldier.destroy

    respond_to do |format|
      format.html { redirect_to soldiers_url }
      format.json { head :ok }
    end
  end
end
