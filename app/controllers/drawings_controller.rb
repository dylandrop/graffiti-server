class DrawingsController < ApplicationController
  # GET /drawings
  # GET /drawings.json
  def index
    @drawings = Drawing.all

    render json: @drawings
  end

  # GET /drawings/1
  # GET /drawings/1.json
  def show
    @drawing = Drawing.find(params[:id])

    render json: @drawing
  end

  # GET /drawings/new
  # GET /drawings/new.json
  def new
    @drawing = Drawing.new

    render json: @drawing
  end

  # POST /drawings
  # POST /drawings.json
  def create
    @drawing = Drawing.new(params[:drawing])

    if @drawing.save
      render json: @drawing, status: :created, location: @drawing
    else
      render json: @drawing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drawings/1
  # PATCH/PUT /drawings/1.json
  def update
    @drawing = Drawing.find(params[:id])

    if @drawing.update_attributes(params[:drawing])
      head :no_content
    else
      render json: @drawing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /drawings/1
  # DELETE /drawings/1.json
  def destroy
    @drawing = Drawing.find(params[:id])
    @drawing.destroy

    head :no_content
  end
end
