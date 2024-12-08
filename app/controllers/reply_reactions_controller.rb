class ReplyReactionsController < ApplicationController
  before_action :set_reply_reaction, only: %i[ show edit update destroy ]

  # GET /reply_reactions or /reply_reactions.json
  def index
    @reply_reactions = ReplyReaction.all
  end

  # GET /reply_reactions/1 or /reply_reactions/1.json
  def show
  end

  # GET /reply_reactions/new
  def new
    @reply_reaction = ReplyReaction.new
  end

  # GET /reply_reactions/1/edit
  def edit
  end

  # POST /reply_reactions or /reply_reactions.json
  def create
    @reply_reaction = ReplyReaction.new(reply_reaction_params)

    respond_to do |format|
      if @reply_reaction.save
        format.html { redirect_to @reply_reaction, notice: "Reply reaction was successfully created." }
        format.json { render :show, status: :created, location: @reply_reaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reply_reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reply_reactions/1 or /reply_reactions/1.json
  def update
    respond_to do |format|
      if @reply_reaction.update(reply_reaction_params)
        format.html { redirect_to @reply_reaction, notice: "Reply reaction was successfully updated." }
        format.json { render :show, status: :ok, location: @reply_reaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reply_reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reply_reactions/1 or /reply_reactions/1.json
  def destroy
    @reply_reaction.destroy!

    respond_to do |format|
      format.html { redirect_to reply_reactions_path, status: :see_other, notice: "Reply reaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reply_reaction
      @reply_reaction = ReplyReaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reply_reaction_params
      params.require(:reply_reaction).permit(:user_upvoted, :user_downvoted, :user_reported)
    end
end
