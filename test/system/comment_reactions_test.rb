require "application_system_test_case"

class CommentReactionsTest < ApplicationSystemTestCase
  setup do
    @comment_reaction = comment_reactions(:one)
  end

  test "visiting the index" do
    visit comment_reactions_url
    assert_selector "h1", text: "Comment reactions"
  end

  test "should create comment reaction" do
    visit comment_reactions_url
    click_on "New comment reaction"

    check "User downvoted" if @comment_reaction.user_downvoted
    check "User reported" if @comment_reaction.user_reported
    check "User upvoted" if @comment_reaction.user_upvoted
    click_on "Create Comment reaction"

    assert_text "Comment reaction was successfully created"
    click_on "Back"
  end

  test "should update Comment reaction" do
    visit comment_reaction_url(@comment_reaction)
    click_on "Edit this comment reaction", match: :first

    check "User downvoted" if @comment_reaction.user_downvoted
    check "User reported" if @comment_reaction.user_reported
    check "User upvoted" if @comment_reaction.user_upvoted
    click_on "Update Comment reaction"

    assert_text "Comment reaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Comment reaction" do
    visit comment_reaction_url(@comment_reaction)
    click_on "Destroy this comment reaction", match: :first

    assert_text "Comment reaction was successfully destroyed"
  end
end
