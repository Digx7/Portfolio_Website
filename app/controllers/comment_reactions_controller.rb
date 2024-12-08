class CommentReactionsController < ApplicationController
  before_action :set_comment_reaction, only: %i[ show edit update destroy ]

  # GET /comment_reactions or /comment_reactions.json
  def index
    @comment_reactions = CommentReaction.all
  end

  # GET /comment_reactions/1 or /comment_reactions/1.json
  def show
  end

  # GET /comment_reactions/new
  def new
    @comment_reaction = CommentReaction.new
  end

  # GET /comment_reactions/1/edit
  def edit
  end

  # POST /comment_reactions or /comment_reactions.json
  def create
    @comment_reaction = CommentReaction.new(comment_reaction_params)

    respond_to do |format|
      if @comment_reaction.save
        format.html { redirect_to @comment_reaction, notice: "Comment reaction was successfully created." }
        format.json { render :show, status: :created, location: @comment_reaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment_reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_reactions/1 or /comment_reactions/1.json
  def update
    respond_to do |format|
      if @comment_reaction.update(comment_reaction_params)
        format.html { redirect_to @comment_reaction, notice: "Comment reaction was successfully updated." }
        format.json { render :show, status: :ok, location: @comment_reaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment_reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_reactions/1 or /comment_reactions/1.json
  def destroy
    @comment_reaction.destroy!

    respond_to do |format|
      format.html { redirect_to comment_reactions_path, status: :see_other, notice: "Comment reaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_reaction
      @comment_reaction = CommentReaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_reaction_params
      params.require(:comment_reaction).permit(:user_upvoted, :user_downvoted, :user_reported)
    end
end
