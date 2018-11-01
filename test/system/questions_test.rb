require "application_system_test_case"
=begin Test elements and their values
class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h1", text: "Ask anything"
  end
end
=end

class QuestionsTest < ApplicationSystemTestCase

  test "asking any question will return expert advice" do
    visit ask_url
    fill_in "user_question", with: "How many rotations around the sun per year"
    click_on "Ask Away"

    assert_text "google it"
  end
end

