class EmailSchedulesController < ApplicationController
  # GET /email_schedules
  # GET /email_schedules.json
  def index
    @email_schedules = EmailSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @email_schedules }
    end
  end

  # GET /email_schedules/1
  # GET /email_schedules/1.json
  def show
    @email_schedule = EmailSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @email_schedule }
    end
  end

  # GET /email_schedules/new
  # GET /email_schedules/new.json
  def new
    @email_schedule = EmailSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @email_schedule }
    end
  end

  # GET /email_schedules/1/edit
  def edit
    @email_schedule = EmailSchedule.find(params[:id])
  end

  # POST /email_schedules
  # POST /email_schedules.json
  def create
    @email_schedule = EmailSchedule.new(params[:email_schedule])

    respond_to do |format|
      if @email_schedule.save
        format.html { redirect_to @email_schedule, notice: 'Email schedule was successfully created.' }
        format.json { render json: @email_schedule, status: :created, location: @email_schedule }
      else
        format.html { render action: "new" }
        format.json { render json: @email_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /email_schedules/1
  # PUT /email_schedules/1.json
  def update
    @email_schedule = EmailSchedule.find(params[:id])

    respond_to do |format|
      if @email_schedule.update_attributes(params[:email_schedule])
        format.html { redirect_to @email_schedule, notice: 'Email schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @email_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_schedules/1
  # DELETE /email_schedules/1.json
  def destroy
    @email_schedule = EmailSchedule.find(params[:id])
    @email_schedule.destroy

    respond_to do |format|
      format.html { redirect_to email_schedules_url }
      format.json { head :no_content }
    end
  end
end
