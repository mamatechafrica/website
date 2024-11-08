require "application_system_test_case"

class JobBoardsTest < ApplicationSystemTestCase
  setup do
    @job_board = job_boards(:one)
  end

  test "visiting the index" do
    visit job_boards_url
    assert_selector "h1", text: "Job boards"
  end

  test "should create job board" do
    visit job_boards_url
    click_on "New job board"

    fill_in "Index", with: @job_board.index
    click_on "Create Job board"

    assert_text "Job board was successfully created"
    click_on "Back"
  end

  test "should update Job board" do
    visit job_board_url(@job_board)
    click_on "Edit this job board", match: :first

    fill_in "Index", with: @job_board.index
    click_on "Update Job board"

    assert_text "Job board was successfully updated"
    click_on "Back"
  end

  test "should destroy Job board" do
    visit job_board_url(@job_board)
    click_on "Destroy this job board", match: :first

    assert_text "Job board was successfully destroyed"
  end
end
