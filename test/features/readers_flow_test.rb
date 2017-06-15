require "test_helper"

feature "ReadersFlow" do
  let(:john) {users(:john)}
  let(:zuma) {posts(:zuma)}
  
  before do
    sign_in_as john 
  end
  scenario "User can visit topstories and see trending stories" do
    visit topstories_index_path
    posts.each do |post| 
      assert_content post.header_image
      assert_content post.title
      assert_content post.body 
    end
  end
  scenario "user can see staffpicks" do 
  end
end
