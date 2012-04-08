class CaptixesController < ApplicationController
 
  def index
    @captixes = Captix.order(sort_column + " " + sort_direction)
  end

  def show
    @captix = Captix.find(params[:id])
  end

  def new
    @captix = Captix.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @captix }
    end
  end

  def edit
    @captix = Captix.find(params[:id])
  end

  def create
    @captix = Captix.new(params[:captix])

    respond_to do |format|
      if @captix.save
        format.html { redirect_to @captix, notice: 'Event was successfully created.' }
        format.json { render json: @captix, status: :created, location: @captix }
      else
        format.html { render action: "new" }
        format.json { render json: @captix.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @captix = Captix.find(params[:id])

    respond_to do |format|
      if @captix.update_attributes(params[:captix])
        format.html { redirect_to @captix, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @captix.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @captix = Captix.find(params[:id])
    @captix.destroy

    respond_to do |format|
      format.html { redirect_to captixes_url }
      format.json { head :no_content }
    end
  end
  
  private
  def sort_column
      params[:sort] || "event_date"
    end

    def sort_direction
      params[:direction] || "asc"
    end
  
end
