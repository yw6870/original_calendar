require 'test_helper'

class LabelsControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get labels_resources_url
    assert_response :success
  end

end
