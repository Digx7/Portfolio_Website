require "test_helper"

class ReplyReactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reply_reaction = reply_reactions(:one)
  end

  test "should get index" do
    get reply_reactions_url
    assert_response :success
  end

  test "should get new" do
    get new_reply_reaction_url
    assert_response :success
  end

  test "should create reply_reaction" do
    assert_difference("ReplyReaction.count") do
      post reply_reactions_url, params: { reply_reaction: { user_downvoted: @reply_reaction.user_downvoted, user_reported: @reply_reaction.user_reported, user_upvoted: @reply_reaction.user_upvoted } }
    end

    assert_redirected_to reply_reaction_url(ReplyReaction.last)
  end

  test "should show reply_reaction" do
    get reply_reaction_url(@reply_reaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_reply_reaction_url(@reply_reaction)
    assert_response :success
  end

  test "should update reply_reaction" do
    patch reply_reaction_url(@reply_reaction), params: { reply_reaction: { user_downvoted: @reply_reaction.user_downvoted, user_reported: @reply_reaction.user_reported, user_upvoted: @reply_reaction.user_upvoted } }
    assert_redirected_to reply_reaction_url(@reply_reaction)
  end

  test "should destroy reply_reaction" do
    assert_difference("ReplyReaction.count", -1) do
      delete reply_reaction_url(@reply_reaction)
    end

    assert_redirected_to reply_reactions_url
  end
end
