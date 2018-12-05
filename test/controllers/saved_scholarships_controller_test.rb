require 'test_helper'

class SavedScholarshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = create(:user)
    # "Sign in"
    sign_in @user

    @scholarship_guide = create(:scholarship_guide)

    @saved_scholarship = create(:saved_scholarship)
  end

  teardown do
    sign_out
    #runs last for all tests
    #sign out stubbed user
  end

  # These are available to the user that is not an admin [:update, :show]
 # test "should create saved scholarship" do

 #    assert_difference('SavedScholarship.count') do
 #      post :create, saved_scholarship: { user_id: @saved_scholarship.user_id, scholarship_guide_id:  @saved_scholarship.scholarship_guide_id, scholarship_name:  @saved_scholarship.scholarship_name, saved: 1 }
 #  end

 #    assert_redirect_to request.referrer

  # end
end
