class FriendsLotsController < ApplicationController
  before_action :set_friends_lot, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /friends_lots or /friends_lots.json
  def index
    @friends_lots = FriendsLot.all
  end

  # GET /friends_lots/1 or /friends_lots/1.json
  def show
  end

  # GET /friends_lots/new
  def new
    #@friends_lot = FriendsLot.new
    @friends_lot = current_user.friends_lots.build
  end
  def edit
  end
  def create
    @friends_lot =current_user.friends_lots.build(friends_lot_params)
    respond_to do |format|
      if @friends_lot.save
        format.html { redirect_to @friends_lot, notice: "Friend was successfully created." }
        format.json { render :show, status: :created, location: @friends_lot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friends_lot.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @friends_lot.update(friends_lot_params)
        format.html { redirect_to @friends_lot, notice: "Friend was successfully updated." }
        format.json { render :show, status: :ok, location: @friends_lot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friends_lot.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @friends_lot.destroy
    respond_to do |format|
      format.html { redirect_to friends_lots_url, notice: "Friend was successfully removed." }
      format.json { head :no_content }
    end
  end
  def correct_user
    @friends_lot = current_user.friends_lots.find_by(id: params[:id])
    redirect_to friends_lots_path, notice: "Not Authorised to edit this friend" if @friends_lot.nil?
  end
  end
  private
    def set_friends_lot
      @friends_lot = FriendsLot.find(params[:id])
    end
    def friends_lot_params
      params.require(:friends_lot).permit(:first_name, :last_name, :email, :mobile, :instagram, :user_id)
    end
