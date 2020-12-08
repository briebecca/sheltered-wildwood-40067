require "test_helper"

class BatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @batch = Batch.create(csv: '')
  end

  test "should get new" do
    get new_batch_url
    assert_response :success
  end

end
