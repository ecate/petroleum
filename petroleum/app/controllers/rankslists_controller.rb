class RankslistsController < ApplicationController
  # GET /rankslists
  # GET /rankslists.json
  def index
    @rankslists = Rankslist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rankslists }
    end
  end

  # GET /rankslists/1
  # GET /rankslists/1.json
  def show
    @rankslist = Rankslist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rankslist }
    end
  end

  # GET /rankslists/new
  # GET /rankslists/new.json
  def new
    @rankslist = Rankslist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rankslist }
    end
  end

  # GET /rankslists/1/edit
  def edit
    @rankslist = Rankslist.find(params[:id])
  end

  # POST /rankslists
  # POST /rankslists.json
  def create
    @rankslist = Rankslist.new(params[:rankslist])
    puts "affichage des params \n"
    puts #{params[:rankslist]}

    respond_to do |format|
      if @rankslist.save
        format.html { redirect_to @rankslist, notice: 'rankslist was successfully created.' }
        format.json { render json: @rankslist, status: :created, location: @rankslist }
      else
        format.html { render action: "new" }
        format.json { render json: @rankslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rankslists/1
  # PUT /rankslists/1.json
  def update
    @rankslist = Rankslist.find(params[:id])

    respond_to do |format|
      if @rankslist.update_attributes(params[:rankslist])
        format.html { redirect_to @rankslist, notice: 'rankslist was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @rankslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rankslists/1
  # DELETE /rankslists/1.json
  def destroy
    @rankslist = Rankslist.find(params[:id])
    @rankslist.destroy

    respond_to do |format|
      format.html { redirect_to rankslists_url }
      format.json { head :ok }
    end
  end
end
