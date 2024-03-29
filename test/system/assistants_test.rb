require "application_system_test_case"

class AssistantsTest < ApplicationSystemTestCase
  setup do
    @assistant = assistants(:samantha)
    login_as @assistant.user
  end

  # test "visiting the index" do
  #   visit assistants_url
  #   assert_selector "h1", text: "Assistants"
  # end

  test "should create assistant" do
    visit new_assistant_url

    fill_in "Description", with: @assistant.description
    fill_in "Instructions", with: @assistant.instructions
    fill_in "Model", with: @assistant.model
    fill_in "Name", with: @assistant.name
    fill_in "User", with: @assistant.user_id
    click_text "Create Assistant"

    assert_text "Assistant was successfully created"
    click_text "Back"
  end

  test "should update Assistant" do
    visit assistant_url(@assistant)
    click_text "Edit this assistant", match: :first

    fill_in "Description", with: @assistant.description
    fill_in "Instructions", with: @assistant.instructions
    fill_in "Model", with: @assistant.model
    fill_in "Name", with: @assistant.name
    fill_in "User", with: @assistant.user_id
    click_text "Update Assistant"

    assert_text "Assistant was successfully updated"
    click_text "Back"
  end

  test "should destroy Assistant" do
    visit assistant_url(@assistant)
    click_text "Destroy this assistant", match: :first

#    assert_text "Assistant was successfully destroyed"
  end
end
