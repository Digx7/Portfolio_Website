require "application_system_test_case"

class ReplyReactionsTest < ApplicationSystemTestCase
  setup do
    @reply_reaction = reply_reactions(:one)
  end

  test "visiting the index" do
    visit reply_reactions_url
    assert_selector "h1", text: "Reply reactions"
  end

  test "should create reply reaction" do
    visit reply_reactions_url
    click_on "New reply reaction"

    check "User downvoted" if @reply_reaction.user_downvoted
    check "User reported" if @reply_reaction.user_reported
    check "User upvoted" if @reply_reaction.user_upvoted
    click_on "Create Reply reaction"

    assert_text "Reply reaction was successfully created"
    click_on "Back"
  end

  test "should update Reply reaction" do
    visit reply_reaction_url(@reply_reaction)
    click_on "Edit this reply reaction", match: :first

    check "User downvoted" if @reply_reaction.user_downvoted
    check "User reported" if @reply_reaction.user_reported
    check "User upvoted" if @reply_reaction.user_upvoted
    click_on "Update Reply reaction"

    assert_text "Reply reaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Reply reaction" do
    visit reply_reaction_url(@reply_reaction)
    click_on "Destroy this reply reaction", match: :first

    assert_text "Reply reaction was successfully destroyed"
  end
end
